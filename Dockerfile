FROM centos:centos7
MAINTAINER kvaps <kvapss@gmail.com>

RUN yum -y install epel-release \
 && yum -y update \
 && yum -y install supervisor cronie rsyslog \
 && yum clean all

ADD bin/* /bin/
ADD etc/* /etc/
ADD etc/service /etc/service
