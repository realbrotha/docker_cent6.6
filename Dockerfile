FROM       centos:centos6.6
MAINTAINER realbrosss@naver.com

ENV WORK_HOME=/home/realbro 

WORKDIR ${WORK_HOME}

RUN        apt-get -y update
RUN        apt-get -y upgrade

# linux tool
RUN apt-get -y install build-essential
RUN apt-get -y install gcc
RUN apt-get -y install git
RUN apt-get -y install vim
RUN apt-get -y install wget
RUN apt-get -y install unzip

# python
RUN apt-get -y install python2.7 
RUN apt-get -y install python-pip python-dev python-setuptools
RUN pip install --upgrade pip

# cross 

RUN     echo "test comeplete"