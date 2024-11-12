# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.7.4
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

source=("https://repo.protonvpn.com/fedora-40-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.7.4-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.1.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-keyring-linux-secretservice/python3-proton-keyring-linux-secretservice-0.1.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-0.36.6-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-killswitch-network-manager/python3-proton-vpn-killswitch-network-manager-0.6.1-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-killswitch-network-manager-wireguard/python3-proton-vpn-killswitch-network-manager-wireguard-0.2.1-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-logger/python3-proton-vpn-logger-0.3.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.9.7-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager-openvpn/python3-proton-vpn-network-manager-openvpn-0.1.1-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager-wireguard/python3-proton-vpn-network-manager-wireguard-0.4.7-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-core/python3-proton-core-0.3.3-1.fc40.noarch.rpm"
)

sha256sums=('4546a6fbf6fb23430ff3f0dd91cf7f69f94a8821e012f8f78a1906eda9efac89'
            'b0f211d6445dbc7a89eed3131a1be167cbc44bf990fc512c257741ecb80c22c8'
            '7e2fa7d435c1501dd256240410d76d6ac40918475cbaea2c126c7837c41bd9bb'
            'c3fbee79a1458f1097fc0b184fedede9d52ea281dbfb36e669be9f6d0023cb95'
            'd343252b3aee268fafdc7808a1353a3500d904ac9d2c4c3e71620079c958aea4'
            '93c02793bed925d07811be6d90f9287750603b1c40bc97654f634e27e6406490'
            '1d9f21e0ea6fa50a7d633f888bec2b5807f36b54712745e0a375f661382ccc6c'
            '46815dc54d6b502adcd6e9007182ff2f80bad18b69fb86c8ad529d4516b505bb'
            'd221f6fa6913023644f5a369c797219bf2c8e1f6323f045d2a4aaac36d9dbc9e'
            '8d88926a43fd18840e3593f588b13e4fc7f2768b764e2ad7b7de10e4e6b1ca38'
            'c497c8c22601a2beab13a5f3cec11432bc0d38f2d51cd623f608a5d11677a8bd')

if [[ "$CARCH" == "x86_64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.1.3-1.fc40.x86_64.rpm")
  sha256sums+=("536a10365a02a195f5c92cb447e32bd17634984b03dbc2ae72000c5c2d72d958")
elif [[ "$CARCH" == "aarch64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.1.3-1.fc40.aarch64.rpm")
  sha256sums+=("326f38fc3cadc2bc006245252aac3738ac12ce4edb60b12082f9b8d2c9cc6e35")
fi

package() {
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
    mv $pkgdir/usr/lib64 $pkgdir/usr/lib
}
