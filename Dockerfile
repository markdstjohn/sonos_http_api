ARG BUILD_FROM
FROM $BUILD_FROM

WORKDIR /app

RUN apk --no-cache add tar curl nodejs nodejs-npm && \
  curl -L https://github.com/jishi/node-sonos-http-api/archive/master.tar.gz | tar xz -C /app && mv /app/node-sonos-http-api-master/* /app && rm -rf /app/node-sonos-http-api-master && npm install --production

EXPOSE 5005

CMD npm start
