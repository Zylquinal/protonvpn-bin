# protonvpn-bin
An unofficial ProtonVPN pre-release version for Arch Linux

## Kill Switch

---

The kill switch is disabled by default. To enable it, you could open `settings` and pick the type of kill switch you want

### How does it work?

There are three states for the kill switch:

#### Connecting Stage

At this stage, depends on the type of kill switch you picked:

1. `Disabled` - The kill switch is disabled, and only the ipv6 leak protection is enabled
2. `Soft` - At this stage the `route` kill switch is enabled, which means that all the traffic is blocked except 
the traffic to the VPN server
3. `Hard` - At this stage the `route` kill switch is enabled, then the general kill switch disabled, to make sure that
we could connect to the VPN server

#### Connected Stage

At this stage, depends on the type of kill switch you picked:

1. `Disabled` - Nothing special happens
2. `Soft` - At this stage the general kill switch is enabled, and `route` kill switch is disabled
3. `Hard` - At this stage the general kill switch is enabled (again), and `route` kill switch is disabled

#### Disconnect Stage

At this stage, depends on the type of kill switch you picked:

1. `Disabled` - The ipv6 leak protection is disabled
2. `Soft` - At this stage the `route` and general kill switches are disabled
3. `Hard` - At this stage nothing special happens

## DNS Leak Protection

---

The kill switch, when enabled will automatically block all the DNS requests.

```patch
ipv4_config = KillSwitchIPConfig(
+            addresses=["10.18.0.1/16"],
+            dns=["0.0.0.0"],
+            dns_priority=-1400,
+            gateway="10.18.0.1",
+            ignore_auto_dns=True,
+            route_metric=97
+        )
```

At this code snippet, you could see that the new DNS will have the highest priority with the priority of `-1400`

### Possible Issues

---

#### My Kill Switch is not working correctly!

If you have any issues with the kill switch, you could try to delete the device using `nmcli device delete ...` and then
`nmcli connection delete`.

#### But i don't think that's the issue!

If you have NetworkManager connectivity config turned on (which is sometime the default), you could try to disable it.
As this config will mess with the metrics of the routes, and will make the kill switch not working correctly. It is not
a NetworkManager bug, but that just how it work by penalizing the routes metrics.

#### That's not the issue too!

The last i could think about is the config file (i guess it should be the first question), you could try
deleting the config located in `~/.config/Proton/VPN` and then try again.

#### I can't build the package!

For this patch i use [`python-ipaddress`](https://aur.archlinux.org/packages/python-ipaddress) which is a dependency that i
used to make the `route` kill switch works. And to do that you have to install the `python-ipaddress` AUR first

## WireGuard

---

For WireGuard, instead of plugin that i assume Proton team are using. What we are doing here
is by using NetworkManager WireGuard native support. And the fact that NetworkManager-wireguard plugin
is not available anymore in AUR, so i decide to use the native one where we don't have to install
extra package.


### Problem

When i tried to implement WireGuard, there's some problem that's Kill Switch. Unlike OpenVPN
that automatically configure it ip route, WireGuard automatically manage the route. This
create a problem for our Network Manager kill switch, and to solve it i decide to use an other way.

#### Using IP Table

I decide to use IP Table to solve this problem, unfortunately we need root access to do this.
Well i can't elevate the whole program, so i decide to use `pkexec` to solve it. This command
when run, will show a popups that ask for root password. And then we could use it to run the 
`iptables` command.

##### The Script
```shell
enable() {
    iptables -I OUTPUT ! -o "$1" -m mark ! --mark $2 -m addrtype ! --dst-type LOCAL -j REJECT
    ip6tables -I OUTPUT ! -o "$1" -m mark ! --mark $2 -m addrtype ! --dst-type LOCAL -j REJECT
}

disable() {
    iptables -D OUTPUT ! -o "$1" -m mark ! --mark $2 -m addrtype ! --dst-type LOCAL -j REJECT
    ip6tables -D OUTPUT ! -o "$1" -m mark ! --mark $2 -m addrtype ! --dst-type LOCAL -j REJECT
}

if [ "$0" = "enable" ]; then
    enable "$1" $2
    exit 1
elif [ "$0" = "disable" ]; then
    disable "$1" $2
    exit 1
fi

echo "Usage: $0 [enable|disable] <interface> <fw_mark>"
echo "What you run: $0 $1 $2"
```

##### How the script run

Instead of saving the script to a file, for a security reason the script will be run directly using
`bash -c` command.

#### Some of the network config f*cked up? what should i do?

I know this might be a problem for some of you, but i provide a menu that you could use to reset
your NetworkManager connection and IP Table rules. This script won't delete your config, but it
will only delete the connection and the IP Table rules the program created. This might also solve some problem where 
the config not getting deleted due to unexpected error.

#### I can't run the script? what should i do?

The script need `pkexec` to run, and if you don't have it installed you have to install it first.
