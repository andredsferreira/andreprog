# Network Address Translation (NAT)

Provides translation of public IP addresses into private IP addresses for a LAN and vice-versa. A router must be capable of performing NAT functions.

*Inside address* : Refers to any address on the LAN.

*Outside address* : Refers to any address outside the LAN, in the Internet.

*Local address* : Refers to an address that appears in datagram in  the LAN: it may be an inside or outside one.

*Global address* : Refers to an address that appears in a datagram on the Internet: it may be an inside or outside one.

Eg. A host on a LAN performs an HTTP request to a server.

- Host on a LAN: has an inside local address 10.0.0.2
- The router of the LAN: has an inside local address 10.0.0.1 and inside global address 78.54.2.85
- The HTTP server has outside global address 19.24.250.3
- The HTTP server has a local global address that corresponds to the outside global address in most cases. 