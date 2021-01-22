FROM       centos:centos7.0.1406
MAINTAINER realbrosss@naver.com

ENV WORK_HOME=/home/realbro 

WORKDIR ${WORK_HOME}

RUN yum -y install centos-release-scl
RUN yum -y install scl-utils

RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;

RUN yum swap -y fakesystemd systemd && yum install -y systemd-devel
    
RUN yum -y install devtoolset-7

RUN scl enable devtoolset-7 bash
RUN echo "test comeplete"
