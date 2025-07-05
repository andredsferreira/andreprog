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

Note : For class A, the 0.0.0.0 and 127.0.0.0 networks are reserved!

| Class | Theoretical Range | First Octet | CIDR Length |
| ----- | --------------------- | ------- | ----------- |
| A | 1.0.0.0 - 126.255.255.255   | 0xxx xxxx | /8  |
| B | 128.0.0.0 - 191.255.255.255 | 10xx xxxx | /16 | 
| C | 192.0.0.0 - 223.255.255.255 | 110x xxxx | /24 |
| D | 224.0.0.0 - 239.255.255.255 | 1110 xxxx | /4  |
| E | 240.0.0.0 - 255.255.255.255 | 1111 xxxx | /4  |

- Classes A to C are used for unicast addressing and identify hosts/network interfaces.

- Class D is used for multicast addressing.

- Class E is reserved for testing purposes.

## Classful Addressing Capacities

| Class | NetworkBits/HostBits | N° Fixed Bits | Usable Network Bits | Total Networks | Total Hosts | 
| ----- | -------------------- | ------------- | ------------------- | -------------- | ----------- |
| A | 8/24  | 1 | 8 - 1 = 7   | 2⁷ - 2 = 126    | 2²⁴ = 16,777,214  | 
| B | 16/16 | 2 | 16 - 2 = 14 | 2¹⁴ = 16,384    | 2¹⁶ = 65,534      |
| C | 24/8  | 3 | 24 - 3 = 21 | 2²¹ = 2,097,152 | 2⁸ =  254         |

## Private IP Addresses

These won't be routed in the Internet and are usually used in local LAN's.

- 10.0.0.0/8

- 172.16.0.0/12

- 192.168.0.0/16

These are also private but have different purposes.

- 0.0.0.0 - 0.255.255.255 : Any range.

- 127.0.0.0 - 127.255.255.255 : Loopback.

- 224.0.0.0 - 239.255.255.255 : Multicast.

- 240.0.0.0 - 255.255.255.255 : Testing purposes.

## Subnetting

A devices finds the network ID of an IP by performing an AND operation between the IP and it's network mask.

To determine the network ID's of the subnets you start with the original network ID then changes the least significant bit of the subnet bits to 1: the resulting decimal number (call it n) serves as the increment for the subnet network ID's. This means that all subnet ID's are multiples of n.

Eg. Consider class B address: x.y.00000000.00000000/16. We chose 3 bits for subnetting (8 total) changing the least significant one to 1 yielding: x.y.00100000.00000000/19 (mask 255.255.224.0). The decimal number of the third octet is 32. This means that all the subnet ID's are multiples of 32:

x.y.0.0     (00000000)
x.y.32.0    (00100000)
x.y.64.0    (01000000)
x.y.96.0    (01100000)
x.y.128.0   (10000000)
x.y.160.0   (10100000)
x.y.192.0   (11000000)
x.y.224.0   (11100000)

## VLSM : Variable Length Subnet Masking

VLSM : Allows for the subnetting of subnets. This can be done as many times as the administrator sees fit and helps a more effecient allocation of IP's within a organization.

