# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.0.0a13
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
         'gobject-introspection'
         'networkmanager'
         'networkmanager-openvpn'
)

optdepends=('libayatana-appindicator'
            'gnome-shell-extension-appindicator'
            'gnome-shell-extensions'
)

root_dir=$(pwd)

source=("https://repo.protonvpn.com/fedora-38-unstable/proton-vpn-gnome-desktop/proton-vpn-gnome-desktop-0.2.0-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.0.0-0.13.a13.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.0.1-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-keyring-linux-secretservice/python3-proton-keyring-linux-secretservice-0.0.1-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-0.17.0-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-vpn-connection/python3-proton-vpn-connection-0.8.0-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-vpn-killswitch/python3-proton-vpn-killswitch-0.1.1-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-vpn-killswitch-network-manager/python3-proton-vpn-killswitch-network-manager-0.1.1-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-vpn-logger/python3-proton-vpn-logger-0.2.1-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.2.7-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-vpn-network-manager-openvpn/python3-proton-vpn-network-manager-openvpn-0.0.4-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-vpn-servers/python3-proton-vpn-servers-0.2.1-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-vpn-session/python3-proton-vpn-session-0.4.0-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-core/python3-proton-core-0.1.11-1.fc38.noarch.rpm"
)
sha256sums=('SKIP' 'SKIP' 'SKIP' 'SKIP' 'SKIP' 'SKIP' 'SKIP' 'SKIP' 'SKIP' 'SKIP' 'SKIP' 'SKIP' 'SKIP' 'SKIP')

package() {
    apply_patch
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
}

apply_patch() {
    cd $srcdir/usr/lib/python3.11/site-packages/proton
    echo "Applying patch..."
    patch --batch -p1 < $root_dir/protonvpn.patch
    cd $root_dir
}
