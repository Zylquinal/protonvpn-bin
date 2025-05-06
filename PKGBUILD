# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.9.6~b0
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

source=("https://repo.protonvpn.com/fedora-42-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.9.6~b0-1.fc42.noarch.rpm"
        "https://repo.protonvpn.com/fedora-42-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.2.0-1.fc42.noarch.rpm"
        "https://repo.protonvpn.com/fedora-42-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-0.42.4-1.fc42.noarch.rpm"
        "https://repo.protonvpn.com/fedora-42-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.12.13-1.fc42.noarch.rpm"
        "https://repo.protonvpn.com/fedora-42-unstable/python3-proton-core/python3-proton-core-0.4.0-1.fc42.noarch.rpm"
)

sha256sums=('2ac4310a1de402f3008caec58dc8995f1bc7d2d7606d0babb40131d23bc6cc2f'
            'a168022209ff8a761e2ee89ee28ce7845606bdeb16a2900a2daf067614aa2315'
            'fdea882c6825725c5b4828428074fa3fd693d2a1e9fd10f91af76781ed9dfaeb'
            '0efa8c842ddf5cbcdd321380a8d493f6364aff4bcf8870929ec98fec1ce8a74e'
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
