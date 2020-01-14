FROM centos:latest
MAINTAINER Jordan Clark mail@jordanclark.us

ARG S6_OVERLAY_VERSION=1.22.1.0
ARG S6_OVERLAY_MD5HASH=3060e2fdd92741ce38928150c0c0346a

COPY container-files /

RUN yum -y update && \
yum -y install wget && \
yum -y clean all && \
cd /tmp && \
wget https://github.com/just-containers/s6-overlay/releases/download/v$S6_OVERLAY_VERSION/s6-overlay-amd64.tar.gz && \
echo "$S6_OVERLAY_MD5HASH *s6-overlay-amd64.tar.gz" | md5sum -c - && \
tar xzf s6-overlay-amd64.tar.gz -C / && \
rm -f s6-overlay-amd64.tar.gz && \
sh /usr/local/sbin/fix-bins.sh

ENTRYPOINT ["/init"]
