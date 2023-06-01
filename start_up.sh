#!/bin/bash

# make entering chroot easy
# 1. mount physical drives/partitions
# 2. mount virtual kernel file system
# 3. enter chroot root=/mnt/lfs

bash mount_partitions.sh
bash mount_virtual_kernel_fs.sh
bash enter_chroot.sh
