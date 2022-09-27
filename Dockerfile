FROM node:10-alpine

RUN apk add --update --no-cache build-base python jq

VOLUME /dist
WORKDIR /build

RUN npm install yoga-layout @types/yoga-layout

COPY ./createDist.sh ./
COPY ./modifyPackageJson.jq ./

CMD [ "/build/createDist.sh" ]
