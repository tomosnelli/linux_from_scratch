LFS=/mnt/lfs
mount -v -t ext4 /dev/sda2 $LFS
mount -v -t ext4 /dev/sda4 $LFS/home
mount -v -t ext4 /dev/sda1 $LFS/boot
