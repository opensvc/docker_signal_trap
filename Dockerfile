FROM alpine:latest
LABEL maintainer="OpenSVC <support@opensvc.com>"
LABEL vendor1="OpenSVC"
COPY trap.sh /tmp
RUN chmod +x /tmp/trap.sh && chown nobody:nobody /tmp/trap.sh
USER nobody
ENTRYPOINT exec /tmp/trap.sh
