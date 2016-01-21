FROM ubuntu:14.04.3

ADD . /var/jenkins_home/
RUN apt-get update && apt-get install -y curl && \
    /var/jenkins_home/scripts/bootstrap

CMD ["/var/jenkins_home/scripts/ci"]
