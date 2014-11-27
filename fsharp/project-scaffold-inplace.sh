#!/usr/bin/env bash

TARGET_DIR=`pwd`
TEMP_DIR=`mktemp -d`

cd $TEMP_DIR

git clone --depth 1 https://github.com/fsprojects/ProjectScaffold .
rm -rf ./.git

(./build.sh) && \
(mv ./{.,}* $TARGET_DIR) && \
(cd $TARGET_DIR) && \
(rm -rf $TEMP_DIR)
