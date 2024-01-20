# sleepy

Just Sleep...zzz

[Docker Hub](https://hub.docker.com/repository/docker/yumafuu/sleepy/general)


```Dockerfile
FROM alpine:3.19 as build

FROM scratch

COPY --from=build /lib/ld-musl-x86_64.so.1 /lib/ld-musl-x86_64.so.1
COPY --from=build /bin/busybox /bin/busybox

ENTRYPOINT ["/bin/busybox", "sleep"]
```

## Info
Size: 904.93 KB
