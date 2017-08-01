FROM golang:1.8-alpine
MAINTAINER b3vis
WORKDIR /go/src
RUN apk add git --no-cache && \
    go get -u github.com/pyed/rtelegram && \
    apk del git && \
    rm -rf /go/src/ /usr/local/go/pkg /usr/local/go/src
CMD /go/bin/rtelegram -url=$RT_URL
