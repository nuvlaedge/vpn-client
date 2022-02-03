FROM alpine:3.9

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
LABEL org.opencontainers.image.title="NuvlaBox System Manager"
LABEL org.opencontainers.image.description="Manages the overall state of the NuvlaBox Engine"

RUN apk --no-cache add openvpn=2.4.6-r4

COPY code/ LICENSE /opt/nuvlabox/

WORKDIR /opt/nuvlabox/

VOLUME /srv/nuvlabox/shared

ONBUILD RUN ./license.sh

ENTRYPOINT ["./openvpn-client.sh"]