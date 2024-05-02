# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.3.1
pkgrel=1
pkgdesc="ProtonVPN for Linux"
url="https://github.com/Zylquinal/protonvpn-bin"
arch=('any')

depends=('gnome-keyring'
         'dbus-python'
         'python-gobject'
         'python-packaging'
         'python-distro'
         'python>=3.12.3'
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

source=("https://repo.protonvpn.com/fedora-40-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.3.1-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.0.2-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-keyring-linux-secretservice/python3-proton-keyring-linux-secretservice-0.0.2-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-0.23.1-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-connection/python3-proton-vpn-connection-0.14.4-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-killswitch/python3-proton-vpn-killswitch-0.4.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-killswitch-network-manager/python3-proton-vpn-killswitch-network-manager-0.4.3-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-logger/python3-proton-vpn-logger-0.2.1-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.4.2-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager-openvpn/python3-proton-vpn-network-manager-openvpn-0.0.7-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-session/python3-proton-vpn-session-0.6.7-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-core/python3-proton-core-0.1.16-1.fc40.noarch.rpm"
)

sha256sums=('c5321c6ca8e37e96b6cd40c3eac2904ab9952ceff27667c689132f766317051c'
            'bfd2c4a4732b5411da5a6e528ae6b801dffdaaffb25678590b68046bc6441bca'
            '4fc57a770d29cc1331a6406b69116ec95ccfb80ca36c8c7a9a13935fda52eff6'
            'c1826f72ebbf1f5fd3eab8979c2941f90c4b98ba240d23b1755432d5a19ec13e'
            'b8814ea9d00baea4fbcecf1e52813eba591d746306d79ae8630dced4600e61cd'
            '566f57fdd46b2835d5796ff1cfaedf7b208ed1185351b1b165c5ebba7762e104'
            '416cea77fbcde999eb89b46c3ed298bff69065f317fbdb14e496ebeeced5d574'
            '8bfa9910f3bc19b3e962200693deac030a4214c1d332985273e668b2d0cf4105'
            '3cc3ae1af8fd38e8137376b9b55295658234ceba9301f61f32831be11342979a'
            'bc69be8c1c8c9dfbe8852fa02bfbe68ff463d75eb511a9294bd841be998fc8d6'
            '18ca68943e5b3d54116eedb0491eb01c96ce70b131926974380c693fa7bb780c'
            '382ab4fcdb5d18dfbc951fa33e923b60d2e5b61feb05e96a01102ad747ff86b0')

package() {
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
}
