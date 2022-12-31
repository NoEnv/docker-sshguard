[![Docker Pulls](https://badgen.net/docker/pulls/noenv/sshguard)](https://hub.docker.com/r/noenv/sshguard)
[![Quay.io Enabled](https://badgen.net/badge/quay%20pulls/enabled/green)](https://quay.io/repository/noenv/sshguard)
[![build](https://github.com/NoEnv/docker-sshguard/actions/workflows/build.yml/badge.svg)](https://github.com/NoEnv/docker-sshguard/actions/workflows/build.yml)

## docker-sshguard

#### Description

SSH Guard as Docker Image.

#### Run

most simple way of running the container

    docker run -d --net=host --cap-add=CAP_NET_ADMIN,CAP_NET_RAW -v /var/log/journal:/var/log/journal:ro noenv/sshguard

#### Check for blocked ips

    nft list set ip sshguard attackers
    nft list set ip6 sshguard attackers

#### Check for the sshguard nftable

    nft list table ip sshguard
    nft list table ip6 sshguard

#### Source

https://github.com/noenv/docker-sshguard
