FROM registry.fedoraproject.org/fedora-minimal:38

LABEL maintainer "NoEnv"
LABEL version "2.4.2"
LABEL description "SSH Guard as Docker Image"

ARG version="2.4.2"

RUN microdnf -y --nodocs install sshguard-$version \
 && microdnf clean all \
 && rm -rf /var/lib/dnf /var/cache/*

COPY sshguard.* /etc/

ENTRYPOINT [ "sshguard" ]
