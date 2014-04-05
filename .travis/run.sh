#!/bin/sh

set -e

[ "${COVERITY_SCAN_BRANCH}" != 1 ] || exit 0

./autogen.sh
./configure $LLDPD_CONFIG_ARGS
make
make check
make distcheck
sudo make install
