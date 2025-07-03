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

IP addresses are 32 bits long or 4 bytes, divided in 4 octets with a network and host portion. The division between both is usually indicated by CIDR notation /x where x is the number of bits to the network (prefix length).

192.154.18.285/24

172.18.154.122/21

## Addressing Schemes

- Classful addressing : Division between network and hosts occur in the octets.
- Subnetted classful addressing : Takes the classful address and further divides the host portion, allocating some bits to a subnetwork.
- Classless addressing : Division between network and hosts can occur in any position.

## IP Address Management and Allocation

*ICANN (Internet Corporation for Assigned Names and Numbers)* : Top of the hierarchy when it comes to public IP address attribution. It also registers domain names for DNS.

*IANA (Internet Assigned Numbers Authority)* : Plays a similar role to ICANN. Both work side by side. 

*RIR (Regional Internet Register)* : The assignement of regional IP addresses are delegated to RIR's: APNIC, ARIN, LACNIC, and RIPE NCC.

ISP's obtain their addresses from a specific RIR.

## IP Classful Addressing

Note : For class A, the 0.0.0.0 and 127.0.0.0 networks are reserved.

Note : The [x] bit never changes!

| Class | Theoretical Range | First Octet Lowest Value | First Octet Highest Value | CIDR Length |
| - | ------------------------- | --------- | ---------- | --- |
| A | 1.0.0.0 - 126.255.255.255 | [0]00 0001 | 0111 1110 | /8 |
| B | 128.0.0.0 - 191.255.255.255 | [10]00 0000 | 1011 1111 | /16 | 
| C | 192.0.0.0 - 223.255.255.255 | [110]0 0000 | 1101 1111 | /24 |
| D | 224.0.0.0 - 239.255.255.255 | [1110] 0000 | 1110 1111 | /4 |
| E | 240.0.0.0 - 255.255.255.255 | [1111] 0000 | 1111 1111 | /4 |



