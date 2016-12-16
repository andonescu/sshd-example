FROM ubuntu

MAINTAINER Ionut Andonescu <andonescu@gmail.com>

RUN apt-get update && apt-get install -y openssh-server

RUN mkdir -p /var/run/sshd

CMD /usr/sbin/sshd -D

USER nobody
WORKDIR /tmp
ENV foobar "Hello World"

Expose 2222

