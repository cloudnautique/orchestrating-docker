FROM ubuntu:14.04.3

ADD . /scratch/workspace/
RUN apt-get update && apt-get install -y curl && \
    /var/jenkins_home/scripts/bootstrap
