#!/bin/sh

set -e

./autogen.sh
./configure ${LLDPD_CONFIG_ARGS---with-snmp}

[ "${COVERITY_SCAN_BRANCH}" != 1 ] || exit 0

make
make check
make distcheck
sudo make install
