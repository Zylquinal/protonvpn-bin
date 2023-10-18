# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.0.0
pkgrel=2
pkgdesc="ProtonVPN for Linux"
url="https://github.com/Zylquinal/protonvpn-bin"
arch=('any')

depends=('gnome-keyring'
         'dbus-python'
         'python-gobject'
         'python-packaging'
         'python-distro'
         'python>=3.11.3-1'
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
         'gobject-introspection'
         'networkmanager'
         'networkmanager-openvpn'
)

optdepends=('libayatana-appindicator'
            'gnome-shell-extension-appindicator'
            'gnome-shell-extensions'
)

source=("https://repo.protonvpn.com/fedora-38-unstable/proton-vpn-gnome-desktop/proton-vpn-gnome-desktop-0.2.0-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.0.0-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.0.1-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-keyring-linux-secretservice/python3-proton-keyring-linux-secretservice-0.0.1-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-0.20.1-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-vpn-connection/python3-proton-vpn-connection-0.11.0-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-vpn-killswitch/python3-proton-vpn-killswitch-0.2.0-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-vpn-killswitch-network-manager/python3-proton-vpn-killswitch-network-manager-0.2.0-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-vpn-logger/python3-proton-vpn-logger-0.2.1-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.3.0-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-vpn-network-manager-openvpn/python3-proton-vpn-network-manager-openvpn-0.0.4-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-vpn-servers/python3-proton-vpn-servers-0.2.1-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-vpn-session/python3-proton-vpn-session-0.6.0-1.fc38.noarch.rpm"
        "https://repo.protonvpn.com/fedora-38-unstable/python3-proton-core/python3-proton-core-0.1.12-1.fc38.noarch.rpm"
)

sha256sums=('34c277026f38198a0a62fb70cc263f5f1aefaadef722f2ad9adc10096a5dce44'
            'f95face6da1b10b02a0b3b353b14163e6893f0c3f2fc1538cc930d0ca499b34a'
            'a6ba1181354b2b91dab8675844613e877551435db001e0ed02ce4f95ff1758f3'
            '78094ae4f63b376606c8b3207aa369eb2684ca85dedbe4695694e87fc4579ff5'
            'af3fbdaec85315de6d741948c501db40f97682439d9526c83cacaf26e0a065a7'
            'da47ca62c2709257092d2e435818bc940a5c623dfef1a901553904ce2b668528'
            '9d4e501bdd06a6b49e10fd88a98881051c095c70f9203e1e984261608a05f2f4'
            '99bbc70a5663614d7a48f2ac24f4c1addfbec0c4fc0e9082e4d5e86e2cb48708'
            'd40191bd51576751899ba6f277e499765b2787486c0bc77c1381104f568795af'
            'c291534ba051d7c3fa8f663f9f74a268881aa58abf54a0b49dfd03eacd35a8ea'
            '359c357be220b630f1d9b348dec2f461a5a7b1931d97f80ecbdb336d6f081f4a'
            '33cface4c9a59afed3788734fa01895b194ba0781e02fedede6cecaf4c1aaebb'
            '2b09f19143ed323244473c8302c691faec04ccbd7fc35f3506032c47f388133f'
            '528298024998d39d340722fb65daf7586fa01b2302816a193f342ee071c691c6')

package() {
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
}
