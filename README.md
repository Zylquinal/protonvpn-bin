# protonvpn-bin

> Please note that this is not an official package and is not supported by ProtonVPN.

# Installation Notes

Please uninstall the old ProtonVPN app before installing this package [(here: issue #3)](https://github.com/Zylquinal/protonvpn-bin/issues/3#issuecomment-1777776264).

If upgrading from 4.2.0 to 4.3.0+, log out and log back in for wireguard to work.

## Remove the old protonvpn app

```bash
sudo pacman -R protonvpn protonvpn-cli protonvpn-gui
sudo rm -rf /usr/lib/python3.11/site-packages/proton
```

## Install the new protonvpn app

```bash
git clone https://github.com/Zylquinal/protonvpn-bin
cd protonvpn-bin
makepkg -si
```
