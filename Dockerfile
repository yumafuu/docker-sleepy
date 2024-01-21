FROM alpine:3.12 as build

COPY sleep.c .

RUN apk add --no-cache build-base

RUN gcc -o sleep sleep.c -static

FROM scratch

COPY --from=build /sleep /bin/sleep

ENTRYPOINT ["/bin/sleep"]
