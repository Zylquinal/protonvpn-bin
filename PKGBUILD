# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.13.1
pkgrel=2
pkgdesc="ProtonVPN for Linux"
url="https://github.com/Zylquinal/protonvpn-bin"
arch=('any')

depends=('gnome-keyring'
         'dbus-python'
         'python-gobject'
         'python-packaging'
         'python-distro'
         'python'
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
         'python-bcc'
         'python-dbus-fast'
         'python-importlib-metadata'
         'gobject-introspection'
         'networkmanager'
         'networkmanager-openvpn'
         'librsvg'
         'python-sentry_sdk'
)

optdepends=('libayatana-appindicator'
            'gnome-shell-extension-appindicator'
            'gnome-shell-extensions'
)

conflicts=('protonvpn'
           'protonvpn-cli'
           'protonvpn-gui'
)

source=("https://repo.protonvpn.com/fedora-43-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.13.1-1.fc43.noarch.rpm"
        "https://repo.protonvpn.com/fedora-43-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.2.1-1.fc43.noarch.rpm"
        "https://repo.protonvpn.com/fedora-43-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-4.14.3-1.fc43.noarch.rpm"
        "https://repo.protonvpn.com/fedora-43-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.13.5-1.fc43.noarch.rpm"
        "https://repo.protonvpn.com/fedora-43-unstable/python3-proton-core/python3-proton-core-0.7.3-1.fc43.noarch.rpm"
        "https://repo.protonvpn.com/fedora-43-unstable/proton-vpn-daemon/proton-vpn-daemon-0.13.4-1.fc43.noarch.rpm"
)

sha256sums=('3af72570e34ef62844c5337ad936d0535147ddf83cd18ad8c90e9f2a2f90d82d'
            '859283f882a132fbbb16bd771928277b60420970b3b18ebd62cd713e8dd42b5e'
            '1baec0d1628f55a59893ab77150a8d759ba28c7b67dc69b752fb6f1fc0a23c68'
            'd761436bb61d45bf46f0e40a83c210f919b86f2f4c4b8edfba954680d5916e2b'
            '318e60f7b8641064748c6dedf840aa18a628ef49efbbad8b428f2af99447b1af'
            '7ac6bc5db08a6861743128e515dd022dd62e06fe029538e655ece043bca48dc9')

install=script.install

if [[ "$CARCH" == "x86_64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-43-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.6.0-1.fc43.x86_64.rpm")
  sha256sums+=("0bd62bb1ac0a27a3d4dabccb025860a85180c0e1cacef59f2e7126ccc0013e00")

  source+=("https://repo.protonvpn.com/fedora-43-unstable/python3-proton-vpn-linux/python3-proton-vpn-linux-1.0.1-1.fc43.x86_64.rpm")
  sha256sums+=("3aeea5c2009e8e48d56eb9a161cadc9acaade2851041d55eb0f7ad21371c82ff")
elif [[ "$CARCH" == "aarch64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-43-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.6.0-1.fc43.aarch64.rpm")
  sha256sums+=("e392389dca39e22a9324f474c2afcc1ee53b7d5e599414ddec3af6b8ee5d1cc5")

  source+=("https://repo.protonvpn.com/fedora-43-unstable/python3-proton-vpn-linux/python3-proton-vpn-linux-1.0.1-1.fc43.aarch64.rpm")
  sha256sums+=("5af15a5ec341ae4729279b2b761e3e30192d5a3b1e8ef75847f7f8a85ca47e91")
fi

package() {
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
    cp -a $pkgdir/usr/lib64/* $pkgdir/usr/lib
    rm -rf $pkgdir/usr/lib64
}
