#!/usr/bin/env bash

set -e

DART_REMOTE_PACKAGE_URL=https://storage.googleapis.com/dart-archive/channels/stable/release/latest/editor/darteditor-linux-x64.zip
DART_LOCAL_PACKAGE_FILE=`tempfile`
DART_LOCAL_DIR=~/dart
DART_LOCAL_DIR_BAK=~/.~dart

rm -f $DART_LOCAL_PACKAGE_FILE
curl -o $DART_LOCAL_PACKAGE_FILE $DART_REMOTE_PACKAGE_URL
if [ -d $DART_LOCAL_DIR ]; then
    rm -rf $DART_LOCAL_DIR_BAK
    mv $DART_LOCAL_DIR $DART_LOCAL_DIR_BAK
fi
unzip -d ~/ $DART_LOCAL_PACKAGE_FILE
rm -f $DART_LOCAL_PACKAGE_FILE
