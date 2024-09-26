# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.5.0
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

source=("https://repo.protonvpn.com/fedora-40-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.5.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.0.2-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-keyring-linux-secretservice/python3-proton-keyring-linux-secretservice-0.0.2-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-0.33.12-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-killswitch-network-manager/python3-proton-vpn-killswitch-network-manager-0.5.4-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-killswitch-network-manager-wireguard/python3-proton-vpn-killswitch-network-manager-wireguard-0.1.4-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-logger/python3-proton-vpn-logger-0.2.1-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.7.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager-openvpn/python3-proton-vpn-network-manager-openvpn-0.1.1-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager-wireguard/python3-proton-vpn-network-manager-wireguard-0.4.7-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-core/python3-proton-core-0.3.3-1.fc40.noarch.rpm"
)

sha256sums=('797d0cc28ffe65ecc64514e3c3fe368652dbad910d651b8928b06cedf77b8d56'
            'bfd2c4a4732b5411da5a6e528ae6b801dffdaaffb25678590b68046bc6441bca'
            '4fc57a770d29cc1331a6406b69116ec95ccfb80ca36c8c7a9a13935fda52eff6'
            '81b9788efd8b1bf3b7985e3dde0ed02dd5f66aa74ee41275a698801ae9cdbe4d'
            '330eb406ca36295d4df716d66256a76ac92a980e5c03ebf47e41a785f204c353'
            '7b0c2498cbfd3a33f21c91ea7962328df72b8b74ece27917b0900b56fa34f705'
            '8bfa9910f3bc19b3e962200693deac030a4214c1d332985273e668b2d0cf4105'
            '8d10f7f659682f2e6113257bd046cbfcb4ef6717a0e8588db47d8c0ec9b7a76b'
            'd221f6fa6913023644f5a369c797219bf2c8e1f6323f045d2a4aaac36d9dbc9e'
            '8d88926a43fd18840e3593f588b13e4fc7f2768b764e2ad7b7de10e4e6b1ca38'
            'c521b1cfbc8a1f5004128c33fe20a886d85ee7a336f4fead89d02d01e5f55acc')

if [[ "$CARCH" == "x86_64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-0.10.0-1.fc40.x86_64.rpm")
  sha256sums+=("aa24e8f3830ff039ccbb41cc356bd6a68a5aef0ca032f9579554b2d918e1ecb6")
elif [[ "$CARCH" == "aarch64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-0.10.0-1.fc40.aarch64.rpm")
  sha256sums+=("f2f98ebfc466aa0857e735bd3057a43af85c73e6c7f7b811932714d4cc6f5467")
fi

package() {
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
    mv $pkgdir/usr/lib64 $pkgdir/usr/lib
}
