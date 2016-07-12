FROM centos:centos7
MAINTAINER kvaps <kvapss@gmail.com>

ENV container docker
RUN systemctl mask systemd-remount-fs.service sys-fs-fuse-connections.mount

ADD bin/* /bin/
ADD etc/* /etc/
