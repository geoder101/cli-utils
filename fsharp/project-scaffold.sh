#!/usr/bin/env bash

PROJECT_NAME=$1

if [ -z $PROJECT_NAME ]; then
    echo "No project name provided. Usage: $0 <project_name>"
    exit 2
fi

git clone --depth 1 https://github.com/fsprojects/ProjectScaffold $PROJECT_NAME
cd $PROJECT_NAME
rm -rf ./.git
(./build.sh) && (git init) && (git add -A)