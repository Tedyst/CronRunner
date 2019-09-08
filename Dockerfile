FROM alpine:latest

ENV COMMAND="" TARGET="" PAUSE="30" SILENT="false" USER="root"

RUN apk add --update bash openssh-client\
    && rm -rf /var/cache/apk/* &&\
    mkdir /root/.ssh

WORKDIR /app
ADD run.sh key /app/


CMD ["/app/run.sh"]