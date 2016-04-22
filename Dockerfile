FROM ubuntu:latest
MAINTAINER Jan Szumiec <jan.szumiec@gmail.com>
RUN apt-get update
RUN apt-get -y install wget
WORKDIR /kiwix
RUN wget http://download.kiwix.org/bin/kiwix-linux-x86_64.tar.bz2
RUN bzip2 -d kiwix-linux-x86_64.tar.bz2
RUN tar -xvf kiwix-linux-x86_64.tar
WORKDIR kiwix
VOLUME /kiwix-data
EXPOSE 8080
CMD ["./bin/kiwix-serve", "--port", "8080", "/kiwix-data/wikipedia.zim"]

