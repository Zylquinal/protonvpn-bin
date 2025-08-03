# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.9.7~b0
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

source=("https://repo.protonvpn.com/fedora-42-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.9.7~b0-1.fc42.noarch.rpm"
        "https://repo.protonvpn.com/fedora-42-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.2.0-1.fc42.noarch.rpm"
        "https://repo.protonvpn.com/fedora-42-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-0.42.5-1.fc42.noarch.rpm"
        "https://repo.protonvpn.com/fedora-42-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.12.14-1.fc42.noarch.rpm"
        "https://repo.protonvpn.com/fedora-42-unstable/python3-proton-core/python3-proton-core-0.4.0-1.fc42.noarch.rpm"
)

sha256sums=('2f7c0184224d87344af8bd7ba72c24f5d64561f089770fee3ee1b567b2523948'
            'a168022209ff8a761e2ee89ee28ce7845606bdeb16a2900a2daf067614aa2315'
            '5f8ee16376eae04e95e65766dc6a328fbe860c59d5dff396a5c7a2b8a10e3723'
            '6e1d48b2d38791fa2c0e7ffce8a35e18388fbbb68d697d355ad7d37dc583c018'
            '97a2febb0823c4996cff5a76f11ac4b5309cae06e86e1e36823b14ecb8197dfa')

if [[ "$CARCH" == "x86_64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-42-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.4.5-1.fc42.x86_64.rpm")
  sha256sums+=("5abaac8f11497e316a9adbb0a38bfea597be9a974b8b45ac380228024da5b9e3")
elif [[ "$CARCH" == "aarch64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-42-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.4.5-1.fc42.aarch64.rpm")
  sha256sums+=("2ffca434429efb4ba5e779494b07417c0136bb80b6e9e00bea1ba21faa30d090")
fi

package() {
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
    cp -a $pkgdir/usr/lib64/* $pkgdir/usr/lib
    rm -rf $pkgdir/usr/lib64
}
