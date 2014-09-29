#!/bin/bash
# -*- coding: utf-8 -*-

NAME=${NAME-omni}
SOURCE_HOST=${SOURCE_HOST-localhost}

DIR=$(dirname $(readlink -f ${BASH_SOURCE[0]}))

set -e +h

source $DIR/config.sh

mkdir -p $TARGET_DIR/mysql && rsync -azh --progress --delete root@$SOURCE_HOST:/data/mysql/ $TARGET_DIR/mysql

mkdir -p $TARGET_DIR/fs && rsync -azh --progress --delete root@$SOURCE_HOST:/data/mysql/ $TARGET_DIR/mysql
