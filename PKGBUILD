# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.6.0
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

source=("https://repo.protonvpn.com/fedora-40-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.6.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.1.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-keyring-linux-secretservice/python3-proton-keyring-linux-secretservice-0.1.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-0.35.5-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-killswitch-network-manager/python3-proton-vpn-killswitch-network-manager-0.6.1-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-killswitch-network-manager-wireguard/python3-proton-vpn-killswitch-network-manager-wireguard-0.2.1-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-logger/python3-proton-vpn-logger-0.3.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.9.1-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager-openvpn/python3-proton-vpn-network-manager-openvpn-0.1.1-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager-wireguard/python3-proton-vpn-network-manager-wireguard-0.4.7-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-core/python3-proton-core-0.3.3-1.fc40.noarch.rpm"
)

sha256sums=('896843ccc00d97ed756b78061500293e6ce881f05523039257561e549130d95a'
            'ad85fa94528345c065f14f08961a6736d938a5b8ab2b3f7c706d5dfd39ae2930'
            '7e2fa7d435c1501dd256240410d76d6ac40918475cbaea2c126c7837c41bd9bb'
            'f8d2300ab79c249158521393594ce69b23de436f78b3e9a352ed133988d43617'
            'd343252b3aee268fafdc7808a1353a3500d904ac9d2c4c3e71620079c958aea4'
            '93c02793bed925d07811be6d90f9287750603b1c40bc97654f634e27e6406490'
            '1d9f21e0ea6fa50a7d633f888bec2b5807f36b54712745e0a375f661382ccc6c'
            '025584215d4eaa28b725a37cdda446300d0107a495903faa3a6f62bd4155501f'
            'd221f6fa6913023644f5a369c797219bf2c8e1f6323f045d2a4aaac36d9dbc9e'
            '8d88926a43fd18840e3593f588b13e4fc7f2768b764e2ad7b7de10e4e6b1ca38'
            'c521b1cfbc8a1f5004128c33fe20a886d85ee7a336f4fead89d02d01e5f55acc')

if [[ "$CARCH" == "x86_64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.0.0-1.fc40.x86_64.rpm")
  sha256sums+=("fdcf09ad68ede91e15f4cf44aa342a7ef95ca24a1be9fcee08c46a46d47228ac")
elif [[ "$CARCH" == "aarch64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.0.0-1.fc40.aarch64.rpm")
  sha256sums+=("8244f2ca1e636474b2c8a0715d5c7b9edad38bdc48472bade8a9dd6c99f3f7aa")
fi

package() {
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
    mv $pkgdir/usr/lib64 $pkgdir/usr/lib
}
