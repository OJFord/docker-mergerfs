FROM alpine:latest AS builder
ENV MERGERFS_VERSION 2.28.1

RUN apk add g++ git linux-headers make python
RUN git clone https://github.com/trapexit/mergerfs
WORKDIR mergerfs

RUN git checkout "$MERGERFS_VERSION"
RUN make
RUN mv build/mergerfs /bin/mergerfs

FROM alpine:latest

COPY --from=builder /bin/mergerfs /usr/local/bin/mergerfs
RUN apk --no-cache add fuse libgcc libstdc++
RUN echo user_allow_other >> /etc/fuse.conf

RUN adduser -D -u1000 mfsuser
USER mfsuser

CMD ["/usr/local/bin/mergerfs", "-d", "-o", "defaults,allow_other,use_ino,func.getattr=newest", "/bricks/*", "/mnt/pool"]
