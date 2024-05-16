#!/bin/bash

set -ex

FN_NO_EXT="sample-images-main"
FN="$FN_NO_EXT.tar.gz"
curl -OL https://gitlab.com/CentOS/automotive/sample-images/-/archive/main/$FN
tar xvf $FN
ls -ltr $FN_NO_EXT
$FN_NO_EXT/automotive-image-builder/automotive-image-builder \
  --container build images/minimal.mpp.yml --export qcow2 --target qemu vm.qcow2

