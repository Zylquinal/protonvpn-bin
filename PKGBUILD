# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.1.10
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
        "https://repo.protonvpn.com/fedora-39-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.2.0-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.0.1-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-keyring-linux-secretservice/python3-proton-keyring-linux-secretservice-0.0.1-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-0.21.0-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-connection/python3-proton-vpn-connection-0.14.2-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-killswitch/python3-proton-vpn-killswitch-0.4.0-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-killswitch-network-manager/python3-proton-vpn-killswitch-network-manager-0.4.2-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-logger/python3-proton-vpn-logger-0.2.1-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.4.0-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-network-manager-openvpn/python3-proton-vpn-network-manager-openvpn-0.0.4-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-vpn-session/python3-proton-vpn-session-0.6.5-1.fc39.noarch.rpm"
        "https://repo.protonvpn.com/fedora-39-unstable/python3-proton-core/python3-proton-core-0.1.16-1.fc39.noarch.rpm"
)

sha256sums=('da5cf1715c6e6adfcc6219a3fd1ec826aaaed07ab4a321264789d12e304d94ad'
            'efd70c7a85df832d3b2f2a1e9ef0181d6807bc51017b2ef7aa7f0cde0c8f4060'
            '25c41277e5b46e7b41bd1cb2e06d46c55a3f25c54ffdc4c9702345ae747f8335'
            '5d0033b7cffd8515d7a53e11f945e54d3ed47711869884423057cb09c1464284'
            '3a9f7fc3a00167b2400bdfceee4999d27c72e791401e581125ffd5594d779da0'
            '8b07f9039cea6aa56499a41926a0a43bcdf12273151beb385f4ee72cbba6994e'
            'b091a3181d639a422fd224f5df9209333a0b9d7e18a954d724c1df08f8681983'
            'de47134d97199accb8381234461f14417ccd37ef67dd1ecff2a8b998589a54e5'
            '23a71b18b1f67e82969d34e96e0e9cc1936240453b3c2e94f55eb61b2d571dce'
            '15cee381e4ad9f6b1b2c9c74ceaa814b7da44b62b76048749e6b25d6a80d2bfe'
            '19686b6e9ee828654a314f46497d0376240c952d072673e9de7d81026d847d08'
            '3b15b6f7920c3e18e849bf21a30af331e10cb2512d3d79b320e6ad72b7a4d80f'
            '4fcc20bc42de1970f19823b4f27037673dcba58e126b841e0bd9be88c418c4e1')

package() {
    mv $srcdir/usr/lib/python3.12 $srcdir/usr/lib/python3.11
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
}
