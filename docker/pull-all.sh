#!/usr/bin/env bash
docker images | awk '{print $1}' | sed 1d | xargs -L1 docker pull
