FROM node:10-alpine

RUN apk add --update --no-cache build-base python jq

VOLUME /dist
WORKDIR /build

RUN npm install webpack-cli webpack
RUN npm install yoga-layout @types/yoga-layout

COPY ./build.sh ./
COPY ./webpack.config.js ./
COPY ./package.json.jq ./

CMD [ "/build/build.sh" ]
