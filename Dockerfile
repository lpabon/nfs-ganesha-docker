FROM fedora
MAINTAINER Huamin Chen, hchen@redhat.com

RUN dnf install -y nfs-ganesha nfs-ganesha-vfs
RUN mkdir -p /exports
VOLUME /exports
EXPOSE 2049/tcp
ADD vfs.conf /vfs.conf
ADD start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]
