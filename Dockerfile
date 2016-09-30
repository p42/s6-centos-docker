FROM centos:centos6
MAINTAINER Jordan Clark jordan.clark@esu10.org

ENV S6_OVERLAY_VERSION 1.18.1.5

RUN yum -y update && \
yum -y install wget && \
yum -y clean all && \
cd /tmp && \
wget https://github.com/just-containers/s6-overlay/releases/download/v$S6_OVERLAY_VERSION/s6-overlay-amd64.tar.gz && \
tar xzf s6-overlay-amd64.tar.gz -C / && \
rm -f s6-overlay-amd64.tar.gz

COPY container-files /

ENTRYPOINT ["/init"]
