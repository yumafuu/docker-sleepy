FROM gcc:13.2 AS build

COPY sleep.c .

RUN gcc -o sleep sleep.c -static

FROM scratch

COPY --from=build /sleep /bin/sleep

ENTRYPOINT ["/bin/sleep"]
