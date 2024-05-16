#!/bin/bash

set -ex

DN="sample-images"
git clone --depth=1 --recursive https://gitlab.com/CentOS/automotive/$DN.git
$DN/automotive-image-builder/automotive-image-builder --container build \
  osbuild-manifests/images/minimal.mpp.yml --export qcow2 --target qemu \
  --verbose vm.qcow2

