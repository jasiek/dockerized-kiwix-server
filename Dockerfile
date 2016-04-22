FROM ubuntu:latest
MAINTAINER Jan Szumiec <jan.szumiec@gmail.com>
RUN apt-get update
RUN apt-get install -y libtool build-essential autoconf automake zip pkg-config aptitude libzim-dev liblzma-dev libctpp2-dev wget pixz zlib1g-dev bc libmicrohttpd-dev aria2 libpugixml-dev iceweasel libxapian-dev xapian-tools libicu-dev
WORKDIR /kiwix
RUN wget http://download.kiwix.org/src/kiwix-0.9-src.tar.xz
RUN xz -d kiwix-0.9-src.tar.xz
RUN tar -xvf kiwix-0.9-src.tar
WORKDIR kiwix-0.9
RUN ./autogen.sh
RUN mkdir static && touch static/Makefile.in
RUN ./configure --disable-android --disable-components
WORKDIR src/dependencies
RUN make
WORKDIR /kiwix/kiwix-0.9
RUN ./configure --disable-android --disable-components
RUN make
VOLUME /kiwix-data
EXPOSE 8080
CMD ["./src/server/kiwix-serve", "--port", "8080", "/kiwix-data/wikipedia.zim"]

