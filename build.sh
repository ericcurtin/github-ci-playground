#!/bin/bash

set -ex

curl -OL https://gitlab.com/CentOS/automotive/src/automotive-image-builder/-/archive/main/automotive-image-builder-main.tar.gz
tar xvf automotive-image-builder-main.tar.gz
automotive-image-builder-main/automotive-image-builder --container build \
  images/minimal.mpp.yml --export qcow2 --target qemu vm.qcow2

