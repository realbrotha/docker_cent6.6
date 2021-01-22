FROM       centos:centos7.0.1406
MAINTAINER realbrosss@naver.com

ENV WORK_HOME=/home/realbro 

WORKDIR ${WORK_HOME}

RUN yum -y install centos-release-scl
RUN yum -y install scl-utils

# RUN yum swap -y fakesystemd systemd
RUN yum -y install systemd-devel
RUN yum -y install devtoolset-7

# cross 
RUN scl enable devtoolset-7 bash
RUN echo "test comeplete"
