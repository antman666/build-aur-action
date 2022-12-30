#!/bin/bash

# export PACKAGER="AntMan666 <945360554@qq.com>"

git clone "https://aur.archlinux.org/$1.git"
cd "$1"
echo 'PACKAGER="AntMan666 <antman666@qq.com>"' >> /etc/makepkg.conf
updpkgsums
makepkg -sf --noconfirm --skippgpcheck
