# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.9.3~b0
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

source=("https://repo.protonvpn.com/fedora-41-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.9.3~b0-1.fc41.noarch.rpm"
        "https://repo.protonvpn.com/fedora-41-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.2.0-1.fc41.noarch.rpm"
        "https://repo.protonvpn.com/fedora-41-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-0.42.2-1.fc41.noarch.rpm"
        "https://repo.protonvpn.com/fedora-41-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.12.10-1.fc41.noarch.rpm"
        "https://repo.protonvpn.com/fedora-41-unstable/python3-proton-core/python3-proton-core-0.4.0-1.fc41.noarch.rpm"
)

sha256sums=('497fa9ebebbb5c565df70ba8188985ef074ba972328d953d2cc1810df7a316d3'
            '222d44e91f35dd7d736edd84d59e799ad4cdcf6fb87b5649fcc7e7af45e708ee'
            '02475d43e632d97b929f0f3b247d2b0f1fbb077cfae1099ee98a615aa7cb39c2'
            'a0779169ad8310aa260b0b1dfdf7b62455f1339580ecae2e52c836a44729a393'
            '6304599e58ccae15384f03dbd1b27f8b70414709f021ae8b559a54ceb7b54bc1')

if [[ "$CARCH" == "x86_64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-41-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.4.3-1.fc41.x86_64.rpm")
  sha256sums+=("85ff9888bc9215f36d947ccdec2b4d0c6d6a4347cf50f1fcf43b024e0ec63d10")
elif [[ "$CARCH" == "aarch64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-41-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.4.3-1.fc41.aarch64.rpm")
  sha256sums+=("030fe1d806725e60dd12111fece3549274e491479bbf7740ee2a47bdffd06756")
fi

package() {
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
    cp -a $pkgdir/usr/lib64/* $pkgdir/usr/lib
    rm -rf $pkgdir/usr/lib64
}
