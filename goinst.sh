#!/usr/bin/env bash
#
# Example usage:
#
# $ VERSION=1.3 sudo ./goinst.sh

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

test "$VERSION" || VERSION=1.3

set -ex
cd /tmp
wget http://golang.org/dl/go$VERSION.linux-amd64.tar.gz
tar -C /usr/local -xzf go$VERSION.linux-amd64.tar.gz
echo 'export PATH=/usr/local/go/bin:\$PATH' > /etc/profile.d/golang.sh
