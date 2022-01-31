#! /bin/bash

# core 18
ln -sf snapcraft-core18.yaml snapcraft.yaml
/snap/bin/snapcraft clean png-dimensions-18 --use-lxd --debug --enable-developer-debug
/snap/bin/snapcraft stage --shell --use-lxd --debug --enable-developer-debug
sudo snap install png-dimensions-18_1.0_amd64.snap --dangerous

# core 20
ln -sf snapcraft-core20.yaml snapcraft.yaml
/snap/bin/snapcraft clean png-dimensions-20 --use-lxd --debug --enable-developer-debug
/snap/bin/snapcraft --use-lxd --debug --enable-developer-debug
sudo snap install png-dimensions-20_1.0_amd64.snap --dangerous

png-dimensions-18 sample-image.png
png-dimensions-20 sample-image.png
