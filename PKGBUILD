# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.15.1
pkgrel=1
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

source=("https://repo.protonvpn.com/fedora-43-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.15.1-1.fc43.noarch.rpm"
        "https://repo.protonvpn.com/fedora-43-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.2.1-1.fc43.noarch.rpm"
        "https://repo.protonvpn.com/fedora-43-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-4.18.0-1.fc43.noarch.rpm"
        "https://repo.protonvpn.com/fedora-43-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.13.5-1.fc43.noarch.rpm"
        "https://repo.protonvpn.com/fedora-43-unstable/python3-proton-core/python3-proton-core-0.7.3-1.fc43.noarch.rpm"
        "https://repo.protonvpn.com/fedora-43-unstable/proton-vpn-daemon/proton-vpn-daemon-0.13.6-1.fc43.noarch.rpm"
)

sha256sums=('cd80effa9b2af1b20a7d9c556dbe990b28496dc2224e59779104f22709741f1f'
            '859283f882a132fbbb16bd771928277b60420970b3b18ebd62cd713e8dd42b5e'
            '9d65009b246f51bca7a6c438aeca3d076f985d2447d2bf1a2b1d7aacfc5d6728'
            'd761436bb61d45bf46f0e40a83c210f919b86f2f4c4b8edfba954680d5916e2b'
            '318e60f7b8641064748c6dedf840aa18a628ef49efbbad8b428f2af99447b1af'
            '84e22f4086e135b4096fb52f3ee02c5a55c8519475c233e220c5e2abff2f3c7a')

install=script.install

if [[ "$CARCH" == "x86_64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-43-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.6.1-1.fc43.x86_64.rpm")
  sha256sums+=("662aff13c8a7af795a6e16cf65ce2c48bcb17f5d0f7c9ed9d22b82743d843c8a")

  source+=("https://repo.protonvpn.com/fedora-43-unstable/python3-proton-vpn-linux/python3-proton-vpn-linux-1.0.1-1.fc43.x86_64.rpm")
  sha256sums+=("3aeea5c2009e8e48d56eb9a161cadc9acaade2851041d55eb0f7ad21371c82ff")
elif [[ "$CARCH" == "aarch64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-43-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.6.1-1.fc43.aarch64.rpm")
  sha256sums+=("fdff39cc81f49461bd10d7dd39b9c4806f01cd260582b5d87e93918266378497")

  source+=("https://repo.protonvpn.com/fedora-43-unstable/python3-proton-vpn-linux/python3-proton-vpn-linux-1.0.1-1.fc43.aarch64.rpm")
  sha256sums+=("5af15a5ec341ae4729279b2b761e3e30192d5a3b1e8ef75847f7f8a85ca47e91")
fi

package() {
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
    cp -a $pkgdir/usr/lib64/* $pkgdir/usr/lib
    rm -rf $pkgdir/usr/lib64
}
