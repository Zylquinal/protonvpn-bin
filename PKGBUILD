# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.4.4
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

source=("https://repo.protonvpn.com/fedora-40-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.4.4-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.0.2-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-keyring-linux-secretservice/python3-proton-keyring-linux-secretservice-0.0.2-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-0.32.2-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-killswitch-network-manager/python3-proton-vpn-killswitch-network-manager-0.5.4-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-killswitch-network-manager-wireguard/python3-proton-vpn-killswitch-network-manager-wireguard-0.1.4-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-logger/python3-proton-vpn-logger-0.2.1-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.5.2-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager-openvpn/python3-proton-vpn-network-manager-openvpn-0.1.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager-wireguard/python3-proton-vpn-network-manager-wireguard-0.4.1-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-core/python3-proton-core-0.2.0-1.fc40.noarch.rpm"
)

sha256sums=('77a3e7659439414c416620ad95e276a090f300411b2f207a7adca166404db2af'
            'bfd2c4a4732b5411da5a6e528ae6b801dffdaaffb25678590b68046bc6441bca'
            '4fc57a770d29cc1331a6406b69116ec95ccfb80ca36c8c7a9a13935fda52eff6'
            '60be5ecb5c7f670d05438d1f5ff59eb0bf543a994c3a690ec3e3aa75662e9674'
            '330eb406ca36295d4df716d66256a76ac92a980e5c03ebf47e41a785f204c353'
            '7b0c2498cbfd3a33f21c91ea7962328df72b8b74ece27917b0900b56fa34f705'
            '8bfa9910f3bc19b3e962200693deac030a4214c1d332985273e668b2d0cf4105'
            'e856369ba5de117abc370b79b552c76d50aaabf6edce30db98e8e58ff7c4edde'
            '1b0abc443e2998e773247edf59f88abce3f28c55780a65c0b64a88c5d8c1242f'
            'c6a940d6590cb3256c68146dbb089622fa177d43663987720f2a1d4c4fdd5af2'
            'bc6581a9e5a27a978376b7a1abef65d7758fa5f584a6e97899b4fed3c38abccd')

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
