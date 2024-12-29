# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.8.2
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

source=("https://repo.protonvpn.com/fedora-41-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.8.2-1.fc41.noarch.rpm"
        "https://repo.protonvpn.com/fedora-41-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.2.0-1.fc41.noarch.rpm"
        "https://repo.protonvpn.com/fedora-41-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-0.39.0-1.fc41.noarch.rpm"
        "https://repo.protonvpn.com/fedora-41-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.9.7-1.fc41.noarch.rpm"
        "https://repo.protonvpn.com/fedora-41-unstable/python3-proton-core/python3-proton-core-0.4.0-1.fc41.noarch.rpm"
)

sha256sums=('21a1c4422f3f55272398d11ab260995045ce1dc0af1568007937138c3a8bbd67'
            '222d44e91f35dd7d736edd84d59e799ad4cdcf6fb87b5649fcc7e7af45e708ee'
            '327b8a7f262bc6593e0857164afe939bbcd28d0040c34a70e8e2db31aa5108d2'
            'a423ee29d99be1b069469610025326bc077eeac89c34316f765f01d02f01251f'
            '6304599e58ccae15384f03dbd1b27f8b70414709f021ae8b559a54ceb7b54bc1')

if [[ "$CARCH" == "x86_64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-41-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.2.0-1.fc41.x86_64.rpm")
  sha256sums+=("64be852296d5b8d0c9ce10bbcd8664cca7a9d93e2987a4da11036bb28fef9da9")
elif [[ "$CARCH" == "aarch64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-41-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.2.0-1.fc41.aarch64.rpm")
  sha256sums+=("ec9b00f9c0203ad91ed74e1dc977c9b67dfc6e56fb09ac94e752bbce6bfd7766")
fi

package() {
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
    mv $pkgdir/usr/lib64 $pkgdir/usr/lib
}
