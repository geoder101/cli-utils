#!/usr/bin/env bash

SOURCE_DIR="/home/geoder101/"
TARGET_DIR="/media/geoder101/E262927B6292545F/geoder101/"

function backup {
    local sourcedir="${SOURCE_DIR}$1/"
    local targetdir="${TARGET_DIR}$1/"

    if [ -d "$sourcedir" ]; then
        mkdir -p $targetdir
        rsync -avz "$sourcedir" "$targetdir"
    fi
}

backup "Music"
backup "Videos"
backup "Documents"
backup "ISO-Images"
backup "VirtualBox VMs"

