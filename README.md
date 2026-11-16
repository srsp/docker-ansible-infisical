![build](https://github.com/srsp/docker-ansible-infisical/actions/workflows/docker-publish.yml/badge.svg)
[![Docker Hub](https://img.shields.io/docker/v/srsp/ansible-infisical?label=Docker%20Hub&logo=docker&logoColor=white)](https://hub.docker.com/r/srsp/ansible-infisical)

# docker-ansible-infisical

Docker image with

* ansible
* ansible-galaxy
* ansible-lint
* curl
* git
* infisical cli
* openssh-client
* python3-hcloud
* rsync

## Usage
```bash
docker pull srsp/ansible-infisical
```

## Developers
This image uses `srsp/ansible` as base image and adds the latest `infisical` CLI from the
Infisical apt repository. Dependabot bumps the base image; each bump is merged automatically,
tagged with the Ansible version and published to Docker Hub.

### Build

```bash
docker build -f Dockerfile -t srsp/ansible-infisical:latest .
```

Check the built image with:

```bash
docker run --rm srsp/ansible-infisical:latest /usr/local/bin/verify-tools
docker run --rm srsp/ansible-infisical:latest infisical --version
```
