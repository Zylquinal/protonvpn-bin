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