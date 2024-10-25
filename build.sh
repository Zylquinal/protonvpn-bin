#!/bin/bash

pacman-key --init
pacman -Syu --noconfirm
pacman -S git sudo binutils debugedit fakeroot patch --noconfirm

useradd -p "" -G wheel builder
echo "builder ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
mkdir -p /home/builder/
cp -a /protonvpn-bin /home/builder/
chown -R builder:builder /home/builder/

cd /home/builder || exit 1
cd protonvpn-bin || exit 1

su builder -c "makepkg -s --noconfirm"
sudo cp /home/builder/protonvpn-bin/*.pkg.tar.zst /protonvpn-bin/