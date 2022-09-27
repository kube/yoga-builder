#!/bin/sh

mkdir -p /dist/dist
mkdir -p /dist/build/Release

cp ./node_modules/yoga-layout/dist/YGEnums.js /dist/dist/
cp ./node_modules/yoga-layout/dist/entry-common.js /dist/dist/
cp ./node_modules/yoga-layout/dist/entry-browser.js /dist/dist/
cp ./node_modules/yoga-layout/build/Release/nbind.js /dist/build/Release/
cp ./node_modules/@types/yoga-layout/index.d.ts /dist/

jq -f ./modifyPackageJson.jq ./node_modules/yoga-layout/package.json >/dist/package.json
