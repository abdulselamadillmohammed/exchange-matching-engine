#include <stdio.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <unistd.h>
#include <string.h>
#include <netinet/in.h>
#include <netdb.h>
#include <arpa/inet.h>
#include <fcntl.h>


int main(int argc, char **argv) {

    int soc = socket(AF_INET, SOCK_STREAM, 0);
    if (soc == -1) {
        perror("client socket");
        exit(EXIT_FAILURE); 
    }
        
    return EXIT_SUCCESS;
}
