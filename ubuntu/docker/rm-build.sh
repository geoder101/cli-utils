#!/usr/bin/env bash
docker ps -aq --filter "kind=build" | xargs docker stop
docker ps -aq --filter "kind=build" | xargs docker rm

