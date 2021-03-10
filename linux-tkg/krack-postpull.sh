#!/bin/bash

cp /home/builder/git/build-alterations/linux-tkg/customization.cfg /home/builder/.local/share/krack/packages/linux-tkg/customization.cfg
patch linux-tkg-config/prepare prepare-noconfirm.patch
