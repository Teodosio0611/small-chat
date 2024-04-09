#ifndef CHATLIB_H
#define CHATLIB_H

/* Networking. */
int CreateTCPServer(int port);
int SocketSetNonBlockNoDelay(int fd);
int AcceptClient(int server_socket);

#endif // CHATLIB_H