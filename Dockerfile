FROM centos:centos7
MAINTAINER kvaps <kvapss@gmail.com>

ENTRYPOINT ["/usr/lib/systemd/systemd"]

ENV container docker

ADD etc/systemd/system/start.service /etc/systemd/system/start.service

RUN rm -f /usr/lib/systemd/system/sysinit.target.wants/sys-fs-fuse-connections.mount \
 && rm -f /usr/lib/systemd/system/local-fs.target.wants/systemd-remount-fs.service \
 && rm -f /usr/lib/systemd/system/multi-user.target.wants/systemd-logind.service \
 && rm -f /etc/systemd/system/getty.target.wants/getty\@tty1.service \
 && rm -f /usr/lib/systemd/system/multi-user.target.wants/getty.target \
 && systemctl enable start.service

ADD bin/* /bin/
ADD etc/* /etc/
