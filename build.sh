#!/bin/bash

set -ex

curl -OL https://gitlab.com/CentOS/automotive/sample-images/-/archive/main/sample-images-main.zip
tar xvf sample-images-main.zip
ls -ltr sample-images/
sample-images/automotive-image-builder/automotive-image-builder \
  --container build images/minimal.mpp.yml --export qcow2 --target qemu vm.qcow2

