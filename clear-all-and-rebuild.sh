#!/usr/bin/bash

echo "removing node_modules directories"
find . -name "node_modules" -type d -prune -exec rm -rf "{}" +
echo "removing dist directories"
find . -name "dist" -type d -prune -exec rm -rf "{}" +
echo "removing dist-types directories"
find . -name "dist-types" -type d -prune -exec rm -rf "{}" +
#echo "removing yarn.lock"
#rm yarn.lock
echo "installing packages"
yarn install
echo "running typescript compiler"
yarn tsc:full
yarn local