#!/bin/sh

npx webpack --config ./webpack.config.js

cp ./node_modules/@types/yoga-layout/index.d.ts /dist/

jq -f ./modifyPackageJson.jq ./node_modules/yoga-layout/package.json >/dist/package.json
