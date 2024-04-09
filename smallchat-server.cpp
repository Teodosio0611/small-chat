#include "smallchat-server.h"
#include "chatlib.h"

ChatState *Chat;
char* name = "huangfeijie111";
struct Client* CreateClient(int fd) {
    char nick[32];
    snprintf(nick, sizeof(nick), "user:%d",fd);
    Client *c = new Client(fd, nick);
    c->nick = (char*)malloc(32);
    memcpy(c->nick, nick, sizeof(nick));
    SocketSetNonBlockNoDelay(fd);
    Chat->clients.emplace(fd, c);
    Chat->maxClient = c->fd > Chat->maxClient ? c->fd : Chat->maxClient;
    Chat->numClients++;
    return c;
}

void FreeClient(Client *c) {
    close(c->fd);
    Chat->clients.erase(c->fd);
    Chat->numClients--;

    if (Chat->clients.empty()) {
        Chat->maxClient = -1;
        delete c;
        return;
    }
    
    if (Chat->maxClient == c->fd) {
        int j;
        for (j = Chat->maxClient - 1; j >= 0; j--) {
            if (Chat->clients[j] != nullptr) {
                Chat->maxClient = j;
                break;
            }
        }
    }
    delete c;
}

void InitChat(void) {
    int serverSock = CreateTCPServer(SERVER_PORT);
    Chat = new ChatState(serverSock, 0, -1);
    if (Chat->serverSock == -1) {
        perror("Creating listening socket");
        exit(1);
    }
}

void SendMsgToAllClientsBut(int excluded, char *s, size_t len) {
    for (auto&& [fd, client] : Chat->clients) {
        if (client == nullptr || fd == excluded) {
            continue;
        }
        write(fd, s, len);
    }
}

int main() {
    InitChat();

    while(true) {
        fd_set readFds;
        struct timeval tv;
        int retVal;

        FD_ZERO(&readFds);
        /* When we want to be notified by select() that there is
         * activity? If the listening socket has pending clients to accept
         * or if any other client wrote anything. */
        FD_SET(Chat->serverSock, &readFds);

        for (int j = 0; j <= Chat->maxClient; j++) {
            if (Chat->clients[j]) FD_SET(j, &readFds);
        }

        /* Set a timeout for select(), see later why this may be useful
         * in the future (not now). */
        tv.tv_sec = 1; // 1 sec timeout
        tv.tv_usec = 0;

        /* Select wants as first argument the maximum file descriptor
         * in use plus one. It can be either one of our clients or the
         * server socket itself. */
        int maxFd = Chat->maxClient < Chat->serverSock ? Chat->serverSock : Chat->maxClient;
        retVal = select(maxFd + 1, &readFds, nullptr, nullptr, &tv);
        if (retVal == -1) {
            perror("select() error");
            exit(1);
        } else if (retVal) {
            /* If the listening socket is "readable", it actually means
             * there are new clients connections pending to accept. */
            if (FD_ISSET(Chat->serverSock, &readFds)) {
                int fd = AcceptClient(Chat->serverSock);
                Client *c = CreateClient(fd);
                std::string_view welcomeMsg =
                    "Welcome to Simple Chat! "
                    "Use /nick <nick> to set your nick.\n";
                write(c->fd, welcomeMsg.data(), strlen(welcomeMsg.data()));
                printf("Connected client fd=%d\n", fd);
            }

            /* Here for each connected client, check if there are pending
             * data the client sent us. */
            char readBuf[256];
            for (int j = 0; j <= Chat->maxClient; j++) {
                if (Chat->clients[j] == nullptr) continue;
                if (FD_ISSET(j, &readFds)) {
                    /* Here we just hope that there is a well formed
                     * message waiting for us. But it is entirely possible
                     * that we read just half a message. In a normal program
                     * that is not designed to be that simple, we should try
                     * to buffer reads until the end-of-the-line is reached. */
                    int nread = read(j,readBuf,sizeof(readBuf) - 1);

                    if (nread <= 0) {
                        /* Error or short read means that the socket
                         * was closed. */
                        printf("Disconnected client fd=%d, nick=%s\n",
                            j, Chat->clients[j]->nick);
                        FreeClient(Chat->clients[j]);
                    } else {
                        /* The client sent us a message. We need to
                         * relay this message to all the other clients
                         * in the chat. */
                        Client *c = Chat->clients[j];
                        readBuf[nread] = 0;

                        /* If the user message starts with "/", we
                         * process it as a client command. So far
                         * only the /nick <newnick> command is implemented. */
                        if (readBuf[0] == '/') {
                            /* Remove any trailing newline. */
                            char *p;
                            p = strchr(readBuf,'\r'); if (p) *p = 0;
                            p = strchr(readBuf,'\n'); if (p) *p = 0;
                            /* Check for an argument of the command, after
                             * the space. */
                            char *arg = strchr(readBuf,' ');
                            if (arg) {
                                *arg = 0; /* Terminate command name. */
                                arg++; /* Argument is 1 byte after the space. */
                            }

                            if (!strcmp(readBuf,"/nick") && arg) {
                                memcpy(c->nick, arg, strlen(arg) + 1);
                            } else {
                                /* Unsupported command. Send an error. */
                                char *errmsg = "Unsupported command\n";
                                write(c->fd, errmsg, strlen(errmsg));
                            }
                        } else {
                            /* Create a message to send everybody (and show
                             * on the server console) in the form:
                             *   nick> some message. */
                            char msg[256];
                            int msglen = snprintf(msg, sizeof(msg),
                                "%s> %s", c->nick, readBuf);

                            /* snprintf() return value may be larger than
                             * sizeof(msg) in case there is no room for the
                             * whole output. */
                            if (msglen >= static_cast<int>(sizeof(msg)))
                                msglen = sizeof(msg)-1;
                            printf("%s",msg);

                            /* Send it to all the other clients. */
                            SendMsgToAllClientsBut(j, msg, msglen);
                        }
                    }
                }
            }
        } else {
            /* Timeout occurred. We don't do anything right now, but in
             * general this section can be used to wakeup periodically
             * even if there is no clients activity. */
        }
    }
    return 0;
}