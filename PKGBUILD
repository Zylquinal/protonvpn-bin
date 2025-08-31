# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.10.0~b0
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

source=("https://repo.protonvpn.com/fedora-42-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.10.0~b0-1.fc42.noarch.rpm"
        "https://repo.protonvpn.com/fedora-42-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.2.0-1.fc42.noarch.rpm"
        "https://repo.protonvpn.com/fedora-42-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-0.45.6-1.fc42.noarch.rpm"
        "https://repo.protonvpn.com/fedora-42-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.12.15-1.fc42.noarch.rpm"
        "https://repo.protonvpn.com/fedora-42-unstable/python3-proton-core/python3-proton-core-0.6.0-1.fc42.noarch.rpm"
        "https://repo.protonvpn.com/fedora-42-unstable/proton-vpn-daemon/proton-vpn-daemon-0.12.0-1.fc42.noarch.rpm"
)

sha256sums=('9a0e82889d51bd437d03cc4cc3d96a20e2e6e8f76d3a5637d298df763c4d03fd'
            'a168022209ff8a761e2ee89ee28ce7845606bdeb16a2900a2daf067614aa2315'
            'f8a760ca105cf8dd1a266a63bd747ef2d6351486c221fb73e1099dc1e542c43a'
            '2dc22bdccc65c0f5f47a2afe88dca65bbf543d2af8a83c93fc43c8210f7f7d07'
            'ced29c4ff5dce447a7104f098e5a5d68f2f283cf949d914324a68f8941e10e27'
            'fb4c92c366b3f3d52270c1eac101f1f54f184c41b55501715e11284f23a3e4a3')

install=script.install

if [[ "$CARCH" == "x86_64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-42-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.4.6-1.fc42.x86_64.rpm")
  sha256sums+=("4d3ab05fe342e1e55086cda7e17655e89c98d914a7db57cc15150c9b7d9ec07e")

  source+=("https://repo.protonvpn.com/fedora-42-unstable/python3-proton-vpn-lib/python3-proton-vpn-lib-0.1.1-1.fc42.x86_64.rpm")
  sha256sums+=("bc11352c346020657353096700c8336d46f27fb75b8f29b8363c9e194c094146")
elif [[ "$CARCH" == "aarch64" ]]; then
  source+=("https://repo.protonvpn.com/fedora-42-unstable/python3-proton-vpn-local-agent/python3-proton-vpn-local-agent-1.4.6-1.fc42.aarch64.rpm")
  sha256sums+=("3d4ca782d0bab1a0b561feffc6cda3bb2b3a75033993668c03f8f528cd657223")

  source+=("https://repo.protonvpn.com/fedora-42-unstable/python3-proton-vpn-lib/python3-proton-vpn-lib-0.1.1-1.fc42.aarch64.rpm")
  sha256sums+=("6354971a912338e7008b495b18bb9e1f34cca5cf8a9a604463c837dd14344866")
fi

package() {
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
    cp -a $pkgdir/usr/lib64/* $pkgdir/usr/lib
    rm -rf $pkgdir/usr/lib64
}
