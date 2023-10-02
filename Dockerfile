FROM docker.io/library/centos:8@sha256:a27fd8080b517143cbbbab9dfb7c8571c40d67d534bbdee55bd6c473f432b177

ENV SRC_DIR=/plugin-src
ARG PLUGIN_BIN=plugin/phased-prow
ARG INSTALL_SCRIPT=install-plugin

RUN mkdir -p $SRC_DIR
COPY $PLUGIN_BIN $SRC_DIR
COPY $INSTALL_SCRIPT /bin

ENTRYPOINT ["install-plugin"]
