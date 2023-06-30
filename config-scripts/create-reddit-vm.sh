#!/usr/bin/env bash
IMAGE_ID=$(yc compute  image list | sed 's/|//g' | grep reddit | awk '{print $2}')
yc compute instance create   --public-ip=true --preemptible --ssh-key=../../ssh/MaxOtus.pub --core-fraction=20 --memory=1G --create-boot-disk image-name="$IMAGE_ID"
