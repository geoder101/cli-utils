#!/usr/bin/env bash
docker ps -aq | xargs docker stop
docker ps -aq | xargs docker rm

