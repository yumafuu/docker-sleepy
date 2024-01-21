# sleepy

Just Sleep...zzz

[Docker Hub](https://hub.docker.com/repository/docker/yumafuu/sleepy/general)


```c
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char *argv[]) {
    if (argc != 2) {
        return 1;
    }

    int seconds = atoi(argv[1]);
    sleep(seconds);
    return 0;
}
```

## Info
Image Size: 19.34 KB
