FROM gliderlabs/alpine:3.1

RUN \
  apk --update add nodejs python make g++ \
    curl wget build-base ca-certificates git

WORKDIR /usr/src/app

ADD . /usr/src/app
RUN npm install

EXPOSE 9000

CMD [ "node", "index" ]
