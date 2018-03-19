FROM nvidia/cuda:9.0-cudnn7-runtime-ubuntu16.04

LABEL maintainer "Yang Bo <atryyang@thoughtworks.com>"

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update

RUN apt-get install apt-transport-https -y

RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823

RUN apt-get update

RUN apt-get install sbt openjdk-8-jdk -y

