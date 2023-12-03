# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.1.3
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
        "https://repo.protonvpn.com/fedora-39-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.1.3-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.0.1-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-keyring-linux-secretservice/python3-proton-keyring-linux-secretservice-0.0.1-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-0.20.2-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-connection/python3-proton-vpn-connection-0.11.0-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-killswitch/python3-proton-vpn-killswitch-0.2.0-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-killswitch-network-manager/python3-proton-vpn-killswitch-network-manager-0.2.0-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-logger/python3-proton-vpn-logger-0.2.1-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.3.0-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-network-manager-openvpn/python3-proton-vpn-network-manager-openvpn-0.0.4-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-session/python3-proton-vpn-session-0.6.4-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-core/python3-proton-core-0.1.16-1.fc39.noarch.rpm"
)

sha256sums=('da5cf1715c6e6adfcc6219a3fd1ec826aaaed07ab4a321264789d12e304d94ad'
            'cde8f2de16d990ea30ad103c94ddef90c35036c903258d37e9a88ad6cd5722d3'
            '25c41277e5b46e7b41bd1cb2e06d46c55a3f25c54ffdc4c9702345ae747f8335'
            '5d0033b7cffd8515d7a53e11f945e54d3ed47711869884423057cb09c1464284'
            '4ff727b7f67f13cfb103f2d001f15557cef4d76ec37257ba9f12243ff370c66a'
            '78f481e1b9d5afdcb50e46f2ae31ada3aece2532ce7002ed43c2b3deec72bb7c'
            '34edf83f80ff5a9f521f61b665d3d9b47109ebb7d201aa2262bbb8f7546b1d9b'
            '9af1c6d67cfde9b8df843db432d656b5c6249b035339dbe14607790ab8daa669'
            '23a71b18b1f67e82969d34e96e0e9cc1936240453b3c2e94f55eb61b2d571dce'
            '97b8634af67dc0bdb28ecbe9da338c4df48b2c5f4294d2d43d5e372c519d39da'
            '19686b6e9ee828654a314f46497d0376240c952d072673e9de7d81026d847d08'
            'a6e2679446eb47635967b45c046071db0bfff74af1b2723323e06641a0bcc10f'
            '4fcc20bc42de1970f19823b4f27037673dcba58e126b841e0bd9be88c418c4e1')

package() {
    mv $srcdir/usr/lib/python3.12 $srcdir/usr/lib/python3.11
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
}
