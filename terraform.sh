#!/bin/bash

DOCKER_IMAGE='broadinstitute/terraform:latest'
SUDO=

#SCRIPT_DIR="$( cd -P "$( dirname "$BASH_SOURCE[0]" )" && pwd )"
SCRIPT_DIR="$(ls -l /usr/local/bin/terraform.sh | sed 's/^.* -> //' | sed 's/\..*//')"
source "${SCRIPT_DIR}/config.sh"

usage() {
    PROG=`basename $0`
    echo "usage: ${PROG} [--version] [--help] <command> [<args>]"
}

if [ "$TERM" != "dumb" ] ; then
    TTY='-it'
fi

if [ `uname -s` != "Darwin" ]; then
    if [ ! -w "${DOCKER_SOCKET}" ]; then
        SUDO='sudo'
    fi
fi

if [ -z "$1" ]; then
    usage
    exit 1
fi

DATA_FQP="$( cd -P "${DATA_DIR}" && pwd )"
if [ ! -d "${DATA_FQP}" ]; then
    echo "Directory `${DATA_FQP}` does not exist...exiting."
    exit 2
fi

$SUDO docker run $TTY --rm -v $DATA_FQP:/data $EXTRA_ENV $DOCKER_IMAGE $@
