FROM ubuntu:latest

RUN mkdir my-first-client
COPY Makefile /my-first-client
COPY java/ /my-first-client/java

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install --reinstall make

RUN apt-get install -y openjdk-8-jdk

# install the latest gradle version
RUN apt -y install vim apt-transport-https dirmngr wget software-properties-common
RUN add-apt-repository ppa:cwchien/gradle
RUN apt-get update
RUN apt -y install gradle