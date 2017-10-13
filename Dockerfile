FROM alpine:latest
LABEL maintainer Jan Szumiec <jan.szumiec@gmail.com>
WORKDIR /
RUN apk add --no-cache curl bzip2 \
 && curl -k https://ftp.fau.de/kiwix/bin/0.10/kiwix-0.10-linux-x86_84.tar.bz2 | tar -xj \
 && mv kiwix-* /kiwix
WORKDIR /kiwix-data
VOLUME /kiwix-data
EXPOSE 8080
ENTRYPOINT ["/kiwix/bin/kiwix-serve", "--port", "8080"]


