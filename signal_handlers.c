#include <stdio.h>
#include <stdlib.h>
#include <signal.h>



void block_signals(int sig) {
    if (sig == SIGINT) {
        signal(sig, SIG_IGN);
    }
    else {
        fprintf(stdout, "NOT ctrl + c sigal recived!\n");
        exit(EXIT_SUCCESS);
    }    
}

