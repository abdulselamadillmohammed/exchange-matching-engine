#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <signal.h>
#include <sys/socket.h>
#include <fcntl.h>

#include "signal_handlers.h"

int main(int argc, char **argv) {
    
    // Testing signal handler
    signal(SIGINT, block_signals);
    signal(SIGTSTP, block_signals);

    fprintf(stdout,"Starting the loop!\n");
    
    while (1) {
        sleep(1);
    }

    return EXIT_SUCCESS;
}
