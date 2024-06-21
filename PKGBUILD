# Maintainer: Zylquinal <contact@zylquinal.com>

pkgname=protonvpn-bin
pkgver=4.4.1
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

source=("https://repo.protonvpn.com/fedora-40-unstable/proton-vpn-gtk-app/proton-vpn-gtk-app-4.4.1-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-keyring-linux/python3-proton-keyring-linux-0.0.2-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-keyring-linux-secretservice/python3-proton-keyring-linux-secretservice-0.0.2-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-api-core/python3-proton-vpn-api-core-0.26.2-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-connection/python3-proton-vpn-connection-0.16.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-killswitch/python3-proton-vpn-killswitch-0.5.0-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-killswitch-network-manager/python3-proton-vpn-killswitch-network-manager-0.4.5-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-killswitch-network-manager-wireguard/python3-proton-vpn-killswitch-network-manager-wireguard-0.0.5-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-logger/python3-proton-vpn-logger-0.2.1-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager/python3-proton-vpn-network-manager-0.4.2-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager-openvpn/python3-proton-vpn-network-manager-openvpn-0.0.7-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-network-manager-wireguard/python3-proton-vpn-network-manager-wireguard-0.0.7-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-vpn-session/python3-proton-vpn-session-0.6.7-1.fc40.noarch.rpm"
        "https://repo.protonvpn.com/fedora-40-unstable/python3-proton-core/python3-proton-core-0.2.0-1.fc40.noarch.rpm"
)

sha256sums=('98746876c97e8b11ec82c1a301f6aa8c311493c4a3373abe785857dbe0d97838'
            'bfd2c4a4732b5411da5a6e528ae6b801dffdaaffb25678590b68046bc6441bca'
            '4fc57a770d29cc1331a6406b69116ec95ccfb80ca36c8c7a9a13935fda52eff6'
            'c58610cacbc4d2aa06d7944b36cb24edc276e2a4b9198c05cf1dc687cf3edde6'
            '3fc97514641eeb1afe07353244dd23e4bb5b35fd995a2f10b7bca73bc3280528'
            '3217de02b89978d73a94af4ac7a0ca07d48b9cdd31add7c088b90c69ebe9b48d'
            '1299fe42738964973d3711d4d05fcca83ccbcc6a05c4d821f950407bca04d0fe'
            '64c7cf662ac50778a615473a86e9eca19727c417ab606220bafd29c96f2c3e67'
            '8bfa9910f3bc19b3e962200693deac030a4214c1d332985273e668b2d0cf4105'
            '3cc3ae1af8fd38e8137376b9b55295658234ceba9301f61f32831be11342979a'
            'bc69be8c1c8c9dfbe8852fa02bfbe68ff463d75eb511a9294bd841be998fc8d6'
            'a045d86a375eeff05189f77557a3a6de6fb8a8013bb71846949e1121ef79e952'
            '18ca68943e5b3d54116eedb0491eb01c96ce70b131926974380c693fa7bb780c'
            'bc6581a9e5a27a978376b7a1abef65d7758fa5f584a6e97899b4fed3c38abccd')

package() {
    find $srcdir/ -mindepth 1 -maxdepth 1 -type d | xargs cp -r -t "$pkgdir"
}
