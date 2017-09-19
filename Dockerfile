FROM centos:centos7
MAINTAINER Jordan Clark jordan.clark@esu10.org

ENV S6_OVERLAY_VERSION 1.19.0.0

COPY container-files /

RUN yum -y update && \
yum -y install wget && \
yum -y clean all && \
cd /tmp && \
wget https://github.com/just-containers/s6-overlay/releases/download/v$S6_OVERLAY_VERSION/s6-overlay-amd64.tar.gz && \
tar xzf s6-overlay-amd64.tar.gz -C / && \
rm -f s6-overlay-amd64.tar.gz && \
sh /usr/local/sbin/fix-bins.sh

ENTRYPOINT ["/init"]
