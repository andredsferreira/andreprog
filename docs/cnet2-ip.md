# IP (IPv4)

It's main purpose is to deliver packets between hosts on different networks, through the Internet.

**Universally addressed** : It assigns an universally unique IP address to the hosts. Necessary for delivery across the Internet.

**Conectionless** : It doesn't establish a connection between hosts before sending.

**Best-effort** : It doesn't guarantee the delivery of packets, only tries to send. It also doesn't provide error detection for the data it sends, only the headers.

**Unacknowledged** : Senders don't know if the packet arrived at the destination. They don't get acknowledgement.

## Main IP Functions

- *Addressing* : Provides IP addressing to uniquely identify hosts on the Internet.
- *Encapsulation* : It accepts segments from the above transport layer protocols TCP and UDP and encapsulates them in an IP datagram.
- *Routing* : Routes the packets between different networks when travelling from sender to receiver.
- *Fragmentation and Reassembly* : Fragments the IP datagrams into smaller units so they can be transported by the underlying data link protocol. The receiving host then reassembles them.

## IP Addressing

An IP address identifies a *network interface* not a *device*. Eg. routers have several network interfaces that need different IP's, but usually only one MAC address which identifies the device itself.

IP addresses are speficic to network interfaces meaning if the host changes network the IP will also usually change.

IP addresses are 32 bits long or 4 bytes.