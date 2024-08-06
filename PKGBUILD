# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.4.3
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

source=("https://repo.protonvpn.com/fedora-40-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.4.3-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.0.2-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-keyring-linux-secretservice/python3-proton-keyring-linux-secretservice-0.0.2-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-0.30.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-killswitch-network-manager/python3-proton-vpn-killswitch-network-manager-0.5.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-killswitch-network-manager-wireguard/python3-proton-vpn-killswitch-network-manager-wireguard-0.1.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-logger/python3-proton-vpn-logger-0.2.1-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.5.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager-openvpn/python3-proton-vpn-network-manager-openvpn-0.1.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager-wireguard/python3-proton-vpn-network-manager-wireguard-0.1.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-core/python3-proton-core-0.2.0-1.fc40.noarch.rpm"
)

sha256sums=('75a72e0ca769cda873a7ce6e258ecc23d4350af6ffea2077dffb1c03c14f5c7a'
            'bfd2c4a4732b5411da5a6e528ae6b801dffdaaffb25678590b68046bc6441bca'
            '4fc57a770d29cc1331a6406b69116ec95ccfb80ca36c8c7a9a13935fda52eff6'
            '9cdb6e595a557b55e0a68658c836e22d707cbadcfe3b204bbef972182500529f'
            'cfcd266997db570a19e83bc4aa616d91967752c13437f0c2246eabe22c1a0b50'
            'a42a977cf612bc6db532ec664f9461352185493c3d63898e3853321c01497268'
            '8bfa9910f3bc19b3e962200693deac030a4214c1d332985273e668b2d0cf4105'
            '0181517aedc81314b7b659603239e0b8db46aa4d8b6e338f136cbcf6a94c4a9a'
            '1b0abc443e2998e773247edf59f88abce3f28c55780a65c0b64a88c5d8c1242f'
            '6ef4eb11012f4038fa1b8383168c26edf543a8520c30f42031804e7f9c47aa8c'
            'bc6581a9e5a27a978376b7a1abef65d7758fa5f584a6e97899b4fed3c38abccd')

if [[ "$CARCH" == "x86_64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-0.3.1-1.fc40.x86_64.rpm")
  sha256sums+=("e9b011cab236648910a1b31facf9eafb1be36130b5bff940ca3d5c4bc1633ab6")
elif [[ "$CARCH" == "aarch64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-0.3.1-1.fc40.aarch64.rpm")
  sha256sums+=("a9c10bb1017d499b138acd4f565b4458eeefce2883b2c0e07333f4c0d11fcea1")
fi

package() {
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
    mv $pkgdir/usr/lib64 $pkgdir/usr/lib
}
