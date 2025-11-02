# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.12.0
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

source=("https://repo.protonvpn.com/fedora-42-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.12.0-1.fc42.noarch.rpm"
        "https://repo.protonvpn.com/fedora-42-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.2.1-1.fc42.noarch.rpm"
        "https://repo.protonvpn.com/fedora-42-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-4.13.1-1.fc42.noarch.rpm"
        "https://repo.protonvpn.com/fedora-42-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.13.4-1.fc42.noarch.rpm"
        "https://repo.protonvpn.com/fedora-42-unstable/python3-proton-core/python3-proton-core-0.7.3-1.fc42.noarch.rpm"
        "https://repo.protonvpn.com/fedora-42-unstable/proton-vpn-daemon/proton-vpn-daemon-0.13.4-1.fc42.noarch.rpm"
)

sha256sums=('f0d954b93084b7c38089e0fb3a425f5484218d8f969c7cf24beb1a8af8af1c05'
            'dc85c7ef84a1e75f41c5fd4f53c1ec8ca0e926dbfec3cec2c11e818d18599ae1'
            'bb9674cb96c784e38ad91a734b85fb209a44bbe237fa781b79c44f2a5284f945'
            'd8d9b8ea8abdb2894607b8822757212ac6d13e843303d89db7d446e7d2a39f8e'
            '48e99afe6f818c7ac54b535e3d8a7df8192e2a65a831cff6d16ba77ec3284c88'
            'e357838cc672a22298530875d08cf711265f0e160fcb116dff06dd851d87d1cc')

install=script.install

if [[ "$CARCH" == "x86_64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-42-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.6.0-1.fc42.x86_64.rpm")
  sha256sums+=("c9f1e6176958f4681e3e5e26afc7324e3e22af1f2a1d3548330d86e950929186")

  source+=("https://repo.protonvpn.com/fedora-42-unstable/python3-proton-vpn-lib/python3-proton-vpn-lib-0.1.1-1.fc42.x86_64.rpm")
  sha256sums+=("bc11352c346020657353096700c8336d46f27fb75b8f29b8363c9e194c094146")
elif [[ "$CARCH" == "aarch64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-42-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.6.0-1.fc42.aarch64.rpm")
  sha256sums+=("bd99bbdcabb09150faa9aa71cbe5027c4b2268a373af49708a11db54a4859cfb")

  source+=("https://repo.protonvpn.com/fedora-42-unstable/python3-proton-vpn-lib/python3-proton-vpn-lib-0.1.1-1.fc42.aarch64.rpm")
  sha256sums+=("6354971a912338e7008b495b18bb9e1f34cca5cf8a9a604463c837dd14344866")
fi

package() {
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
    cp -a $pkgdir/usr/lib64/* $pkgdir/usr/lib
    rm -rf $pkgdir/usr/lib64
}
