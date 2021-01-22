FROM       centos:centos7.0.1406
MAINTAINER realbrosss@naver.com

ENV WORK_HOME=/home/realbro 

WORKDIR ${WORK_HOME}

RUN yum -y install centos-release-scl
RUN yum update scl-utils

RUN yum swap -y fakesystemd systemd
RUN yum install -y systemd-devel
RUN yum install devtoolset-7

# cross 

RUN     echo "test comeplete"
