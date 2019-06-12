# Do something like this:
#
# init a tap interface
ip link set dev tap0 down
ip tuntap del mode tap tap0

# make linux do NAT (replace wlan0 with your extern interface)
iptables --flush
iptables --table nat --flush
iptables --delete-chain
echo 0 > /proc/sys/net/ipv4/ip_forward

