FROM centos:centos7
MAINTAINER kvaps <kvapss@gmail.com>

ENTRYPOINT ["/bin/bash", "-c", "env > /etc/environment; exec /usr/lib/systemd/systemd"]

ENV container docker

ADD etc/systemd/system/start.service /etc/systemd/system/start.service

RUN systemctl mask sys-fs-fuse-connections.mount systemd-remount-fs.service systemd-logind.service getty@tty1.service console-getty.service \
 && systemctl enable start.service

ADD bin/* /bin/
ADD etc/* /etc/
