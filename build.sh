#!/bin/sh

# This line is not valid because _a is not declared previously in scope.
# We add a var declaration to fix this.
sed -i 's/_a = _typeModule(_typeModule),/var _a = _typeModule(_typeModule);/g' ./node_modules/yoga-layout/build/Release/nbind.js

# Build

npx webpack --config ./webpack.config.js

echo "export default __webpack_exports__" >> /dist/index.js

# Types

cp ./node_modules/@types/yoga-layout/index.d.ts /dist/

# Package.json

jq -f ./modifyPackageJson.jq ./node_modules/yoga-layout/package.json >/dist/package.json
