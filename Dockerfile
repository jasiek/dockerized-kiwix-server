FROM ubuntu:latest
MAINTAINER Jan Szumiec <jan.szumiec@gmail.com>
RUN apt-get update
RUN apt-get -y install wget bzip2
WORKDIR /kiwix
RUN wget -q http://download.kiwix.org/bin/kiwix-linux-x86_64.tar.bz2
RUN tar -xjf kiwix-linux-x86_64.tar.bz2
RUN rm kiwix-linux-x86_64.tar.bz2
WORKDIR kiwix
VOLUME /kiwix-data
EXPOSE 8080
CMD ["./bin/kiwix-serve", "--port", "8080", "/kiwix-data/wikipedia.zim"]

