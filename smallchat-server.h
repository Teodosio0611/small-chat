#ifndef SERVER_H
#define SERVER_H

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <sys/select.h>
#include <unistd.h>
#include <unordered_map>
#include <string_view>
#include <iostream>

#define MAX_CLIENTS 1000 // This is actually the higher file descriptor.
#define SERVER_PORT 7711


struct Client {
    Client(int f, char* n) : fd(f), nick(n) {}
    int fd;
    char* nick;
};

struct ChatState {
    ChatState(int s, int num, int max) : serverSock(s), numClients(num), maxClient(max) {}
    int serverSock;
    int numClients;
    int maxClient;
    std::unordered_map<int, Client*> clients;
};
#endif