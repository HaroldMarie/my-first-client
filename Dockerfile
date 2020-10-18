FROM ubuntu:latest

RUN mkdir my-first-client
COPY Makefile /my-first-client
COPY java/build.gradle /my-first-client
COPY java/settings.gradle /my-first-client
COPY java/src/main/java/ /my-first-client/java
COPY java/make-java.sh /my-first-client/java

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install --reinstall make

RUN apt-get install -y openjdk-8-jdk

# RUN apt install -y gradle

RUN apt -y install vim apt-transport-https dirmngr wget software-properties-common
RUN add-apt-repository ppa:cwchien/gradle
RUN apt-get update
RUN apt -y install gradle

