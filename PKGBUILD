# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.16.5
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

source=("https://repo.protonvpn.com/fedora-43-stable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.16.5-1.fc43.noarch.rpm"
        "https://repo.protonvpn.com/fedora-43-stable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.2.1-1.fc43.noarch.rpm"
        "https://repo.protonvpn.com/fedora-43-stable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-5.2.4-1.fc43.noarch.rpm"
        "https://repo.protonvpn.com/fedora-43-stable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.13.5-1.fc43.noarch.rpm"
        "https://repo.protonvpn.com/fedora-43-stable/python3-proton-core/python3-proton-core-0.7.4-1.fc43.noarch.rpm"
        "https://repo.protonvpn.com/fedora-43-stable/proton-vpn-daemon/proton-vpn-daemon-0.13.7-1.fc43.noarch.rpm"
)

sha256sums=('ba9656490d60a2c36f36cd3540f97346c26aa5fcb66d767262cc8b546d1945bf'
            '4f6ddfce05cacc81a78c317b1ae657fa7f35bb22ff81275fa831230d967a5477'
            'ad3d947d2d8857d52b9ff7123883e83929f957fe2af22cff897a310243dbf902'
            '4ff5dc4b3a6c7fb78a9fffbc6604ab2105aa1ed4a9cd4ab902e419633c55291a'
            'da657b9a00523324a6fbbfa3dc466cf12ad0ee027a4b2e0b955e77a69efd4129'
            'ffbc820450dd49e91b385d59f20731a43520698d79d9ced8512c986e7e5f1db4')

install=script.install

if [[ "$CARCH" == "x86_64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-43-stable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.6.3-1.fc43.x86_64.rpm")
  sha256sums+=('6d602d993669f389db18af0ab485a6f3945e8048f7f9cc8b82a6812914b4396c')

  source+=("https://repo.protonvpn.com/fedora-43-unstable/python3-proton-vpn-linux/python3-proton-vpn-linux-1.0.1-1.fc43.x86_64.rpm")
  sha256sums+=('3aeea5c2009e8e48d56eb9a161cadc9acaade2851041d55eb0f7ad21371c82ff')
elif [[ "$CARCH" == "aarch64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-43-stable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.6.3-1.fc43.aarch64.rpm")
  sha256sums+=('001977758debe40c7a656b614c4ef5b88c074c92e9279ccc717a9b70b2c4d8fd')

  source+=("https://repo.protonvpn.com/fedora-43-unstable/python3-proton-vpn-linux/python3-proton-vpn-linux-1.0.1-1.fc43.aarch64.rpm")
  sha256sums+=('5af15a5ec341ae4729279b2b761e3e30192d5a3b1e8ef75847f7f8a85ca47e91')
fi

package() {
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
    cp -a $pkgdir/usr/lib64/* $pkgdir/usr/lib
    rm -rf $pkgdir/usr/lib64
}
