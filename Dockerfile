FROM alpine:latest

ENV COMMAND="" TARGET="" SILENT="false" USER="root"

RUN apk add --update bash openssh-client\
    && rm -rf /var/cache/apk/* &&\
    mkdir /root/.ssh

WORKDIR /app
ADD run.sh /app/


CMD ["/app/run.sh"]