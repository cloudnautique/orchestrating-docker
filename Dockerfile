FROM ubuntu:14.04.3

ADD ./scripts/bootstrap /scripts/bootstrap
ADD RUN curl -s -L https://get.docker.com/builds/Linux/x86_64/docker-1.9.1 > /usr/bin/docker; chmod +x /usr/bin/docker
RUN apt-get update && apt-get install -y curl && \
    /scripts/bootstrap
