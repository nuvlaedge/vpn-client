ARG BASE_IMAGE=python:3.8-alpine3.12
FROM ${BASE_IMAGE}

ARG GIT_BRANCH
ARG GIT_COMMIT_ID
ARG GIT_BUILD_TIME
ARG GITHUB_RUN_NUMBER
ARG GITHUB_RUN_ID
ARG PROJECT_URL

LABEL git.branch=${GIT_BRANCH}
LABEL git.commit.id=${GIT_COMMIT_ID}
LABEL git.build.time=${GIT_BUILD_TIME}
LABEL git.run.number=${GITHUB_RUN_NUMBER}
LABEL git.run.id=${GITHUB_RUN_ID}
LABEL org.opencontainers.image.authors="support@sixsq.com"
LABEL org.opencontainers.image.created=${GIT_BUILD_TIME}
LABEL org.opencontainers.image.url=${PROJECT_URL}
LABEL org.opencontainers.image.vendor="SixSq SA"
LABEL org.opencontainers.image.title="NuvlaEdge VPN Client"
LABEL org.opencontainers.image.description="Provides a VPN client connection for the NuvlaEdge edge device"

RUN apk update && apk add --no-cache openvpn

COPY code/ LICENSE /opt/nuvlaedge/

WORKDIR /opt/nuvlaedge/

VOLUME /srv/nuvlaedge/shared

ONBUILD RUN ./license.sh

ENTRYPOINT ["./openvpn-client.sh"]
