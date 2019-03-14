#!/usr/bin/env sh

# abort on errors
set -e

# build
yarn build

# navigate into the build output directory
cd dist

# add CNAME file for custom domain
echo 'www.jennyxing.com' > CNAME

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:jennyxing27/jennyxing27.github.io.git master

cd -