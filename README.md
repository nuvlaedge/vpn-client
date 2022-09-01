# NuvlaEdge VPN Client

[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg?style=for-the-badge)](https://github.com/nuvlaedge/vpn-client/graphs/commit-activity)
[![GitHub issues](https://img.shields.io/github/issues/nuvlaedge/vpn-client?style=for-the-badge&logo=github&logoColor=white)](https://GitHub.com/nuvlaedge/vpn-client/issues/)
[![Docker pulls](https://img.shields.io/docker/pulls/nuvlaedge/vpn-client?style=for-the-badge&logo=Docker&logoColor=white)](https://cloud.docker.com/u/nuvlaedge/repository/docker/nuvlaedge/vpn-client)
[![Docker image size](https://img.shields.io/docker/image-size/nuvladev/vpn-client/master?logo=docker&logoColor=white&style=for-the-badge)](https://cloud.docker.com/u/nuvlaedge/repository/docker/nuvlaedge/vpn-client)


![CI Build](https://github.com/nuvlaedge/vpn-client/actions/workflows/main.yml/badge.svg)
![CI Release](https://github.com/nuvlaedge/vpn-client/actions/workflows/release.yml/badge.svg)


**This repository contains the source code for the NuvlaEdge VPN client - the microservice that starts the vpn client
 in the [NuvlaEdge](https://sixsq.com/nuvlaedge).**

This microservice is an integral component of the NuvlaEdge Engine.

---

**NOTE:** this microservice is part of a loosely coupled architecture, thus when deployed by itself, it might not provide all of its functionalities. Please refer to https://github.com/nuvlaedge/deployment for a fully functional deployment

---

## Build the NuvlaEdge VPN Client

This repository is already linked with Travis CI, so with every commit, a new Docker image is released.

There is a [POM file](pom.xml) which is responsible for handling the multi-architecture and stage-specific builds.

**If you're developing and testing locally in your own machine**, simply run `docker build .` or even deploy the microservice via the local [compose files](docker-compose.yml) to have your changes built into a new Docker image, and saved into your local filesystem.

**If you're developing in a non-master branch**, please push your changes to the respective branch, and wait for Travis CI to finish the automated build. You'll find your Docker image in the [nuvladev](https://hub.docker.com/u/nuvladev) organization in Docker hub, names as _nuvladev/vpn-client:\<branch\>_.

## Deploy the NuvlaEdge VPN Client


### Prerequisites

 - *Docker (version 18 or higher)*
 - *Docker Compose (version 1.23.2 or higher)*


### Launching the NuvlaEdge VPN Client

Simply run `docker-compose up --build`


## Contributing

This is an open-source project, so all community contributions are more than welcome. Please read [CONTRIBUTING.md](CONTRIBUTING.md)

## Copyright

Copyright &copy; 2021, SixSq SA
