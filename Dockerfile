FROM alpine:latest
RUN apk update && apk --no-cache add curl openssl jq

COPY /scripts/* /etc/periodic/custom
COPY startup.sh /usr/local/startup.sh
CMD "/usr/local/startup.sh && crond -f -l 8"
