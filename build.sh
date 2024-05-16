#!/bin/bash

set -ex

FN="sample-images-main.tar.gz"
curl -OL https://gitlab.com/CentOS/automotive/sample-images/-/archive/main/$FN
tar xvf $FN
ls -ltr sample-images/
sample-images/automotive-image-builder/automotive-image-builder \
  --container build images/minimal.mpp.yml --export qcow2 --target qemu vm.qcow2

