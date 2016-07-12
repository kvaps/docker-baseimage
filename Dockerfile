FROM centos:centos7
MAINTAINER kvaps <kvapss@gmail.com>

RUN yum -y install epel-release \
 && yum -y update \
 && yum clean all

ADD bin/* /bin/
ADD etc/* /etc/
