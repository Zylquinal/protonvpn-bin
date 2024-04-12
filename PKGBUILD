# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.3.0
pkgrel=1
pkgdesc="ProtonVPN for Linux"
url="https://github.com/Zylquinal/protonvpn-bin"
arch=('any')

depends=('gnome-keyring'
         'dbus-python'
         'python-gobject'
         'python-packaging'
         'python-distro'
         'python>=3.11.3-1'
         'python-aiohttp'
         'python-gnupg'
         'python-bcrypt'
         'python-importlib-metadata'
         'python-pyopenssl'
         'python-requests'
         'python-pynacl'
         'python-setuptools'
         'python-keyring'
         'python-jinja'
         'python-importlib-metadata'
         'gobject-introspection'
         'networkmanager'
         'networkmanager-openvpn'
         'librsvg'
)

optdepends=('libayatana-appindicator'
            'gnome-shell-extension-appindicator'
            'gnome-shell-extensions'
)

conflicts=('protonvpn'
           'protonvpn-cli'
           'protonvpn-gui'
)

source=("https://repo.protonvpn.com/fedora-39-unstable/proton-vpn-gnome-desktop/proton-vpn-gnome-desktop-0.2.0-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.3.0-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.0.2-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-keyring-linux-secretservice/python3-proton-keyring-linux-secretservice-0.0.2-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-0.22.3-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-connection/python3-proton-vpn-connection-0.14.4-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-killswitch/python3-proton-vpn-killswitch-0.4.0-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-killswitch-network-manager/python3-proton-vpn-killswitch-network-manager-0.4.3-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-logger/python3-proton-vpn-logger-0.2.1-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.4.2-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-network-manager-openvpn/python3-proton-vpn-network-manager-openvpn-0.0.7-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-session/python3-proton-vpn-session-0.6.7-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-core/python3-proton-core-0.1.16-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-network-manager-wireguard/python3-proton-vpn-network-manager-wireguard-0.0.5-1.fc39.noarch.rpm"
)

sha256sums=('da5cf1715c6e6adfcc6219a3fd1ec826aaaed07ab4a321264789d12e304d94ad'
            'b62dc87bf55d1a51368fab70f088d49355cd00ff135331bdf47c4fc4ec714b3a'
            'af244d096912ac1d9579a8a6e006aaf45894392967220febbc4b185d1b2cd31b'
            '061584829c3b496538739aa2f075f4734571e49791e3e53f385a13262940584f'
            'a260fe0f1151f419f85e7b8fec25c43a438833477290fb958a454d57bbd02c11'
            '946267a26e048ab53a602cb22bcfad766cfeb23b7c713cf69e17adb4dba6fac5'
            'f776bc11f3f255b12f85ed8a459f21f181ecef196751ef3d14c515929cb880f5'
            '79e180d1683217cb07cdde992139c84610fbe1745ed2bb03c28f78b333b40369'
            'd02b5984ddea57756207ee1586d13aea858779d051a83d6eed35710c21d47b06'
            'a05ad085eb553ba07f723a1b7f3cdfc101772374ef8b0fc41dafa1f01f11861d'
            'ff954dc682e9d5599bf992e31c650d1936c6ddf6ec0047cbdc331f541c9b53f4'
            '55bbcac982a00b7b2b6bbb6f681bd3dba3f448d846262a9456ecad09d5d601e9'
            'ae415777f81261bf78397ecf421fd68c7b56977b880d6a4ca9e743037f6be5f9'
            '798f9e6523e64987b1f80f2f00d8893fd430bddf151c9d6a76a9bfc95beec4a0')

package() {
    mv $srcdir/usr/lib/python3.12 $srcdir/usr/lib/python3.11
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
}
