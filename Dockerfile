FROM verdel/centos-base:latest
LABEL maintainer="Vadim Aleksandrov <valeksandrov@me.com>"

COPY rootfs /

RUN pip3 install git+http://github.com/verdel/vmware-task-telegram-bot \
    # Clean up
    && dnf clean all \
    && rm -rf \
    /usr/share/man \
    /tmp/* \
    /var/cache/dnf
