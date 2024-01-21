#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <seconds>\n", argv[0]);
        return 1;
    }

    int seconds = atoi(argv[1]);

    printf("Sleeping for %d seconds...\n", seconds);
    sleep(seconds);

    printf("Wake up!\n");
    return 0;
}
