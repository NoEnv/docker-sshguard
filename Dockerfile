FROM alpine:3.17

LABEL maintainer "NoEnv"
LABEL version "2.4.2"
LABEL description "SSH Guard as Docker Image"

ARG version="2.4.2-r1"

RUN apk add --no-cache --purge --clean-protected -u nftables sshguard=$version \
 && rm -rf /var/cache/apk/*

CMD [ "sshguard", "-h" ]
