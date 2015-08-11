#!/usr/bin/env bash
docker images -q --filter "label=kind=build" | xargs docker rmi

