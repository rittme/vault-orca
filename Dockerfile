FROM alpine:latest
RUN apk update && apk --no-cache add curl openssl jq ca-certificates


COPY scripts/orca.sh /usr/local/orca.sh
COPY scripts/startup.sh /usr/local/startup.sh

CMD "/usr/local/startup.sh"
