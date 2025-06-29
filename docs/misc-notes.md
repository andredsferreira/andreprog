## HTTP

- Remember that before any HTTP request is sent a TCP connection **MUST** be established: this performs a three-way handshake between the client and server (SYN, SYN-ACK, ACK) which consumes one extra RTT.

- Remember that when reading files in python for HTTP responses or requests you should do it in bytes mode
with flags as "rb" or "wb". This ensures you are not corrupting non text content such as HTML, images, videos, etc.

### Conditional GET

Conditional GET's are necessary in the presence of proxy caches.

A conditional GET is sent from a cache to a web server to check if the request it received from the client has been modified in the web server.

Eg. The proxy server receives a request from a client and caches that request. A week later the client sends the same request. The proxy takes the last-modified parameter from the previously cached request, and sends a conditional GET to the web server: which includes a "If-modified-since: last-modified". Then the server condionally replies.

### HTTP/2

The main enhancement of HTTP/2 is the ability to frame HTTP requests and responses.

## DNS

DNS is both a protocol and a distributed database. 
DNS connections run over UDP in port 53.
DNS follows a client-server architecture.

DNS servers are usually UNIX machines running the BIND (Berkeley Internet Name Domain) software: which allows for the translation of domain names into ip addresses.

*Canonical hostname* : The "original" hostname of a node. Usually a hostname has many aliases that point to the canonical hostname, and are more readable than the canonical hostname. Eg: The canonical hostname relay1.west-coast.yahoo.com has the alias yahoo.com.

### DNS queries

*Recursive queries* : A host queries a DNS server which in turn does the mapping of the hostname to ip address on it's behalf. In other words, the host does not directly receive the response.

*Iterative queries* : A host (but usually another server in the hierarchy) queries a DNS server and directly receives the reply for the mapping it needs.

## SMTP

- It's a push protocol.
- Runs over TCP on port 25.
- After TCP handshake is established, an SMTP handshake also needs to be established for each email.

*Mail User Agent (MUA) aka User Agent* : Responsible for sending emails from the client to the user's email provider server.

*SMTP Server* : Responsible for sending emails from the user to the destination SMTP server. The SMTP protocol works between SMTP servers and when sending from client (it is considered a push protocol).

### Eg: Alice sends an email to Bob

1. Alice invokes her user agent to write the email message.

2. The user agent sends the email to the Alice's SMTP server (using SMTP or HTTP).

3. On Alice's SMTP server the email is placed on an outgoing queue.

4. Through SMTP, Alice's SMTP server sends the email to Bob's SMTP server.

5. The email is placed on Bob's mailbox in it's SMTP server.

6. Bob invokes his user agent to retreive the email (using IMAP - Internet Mail Access Protocol, or HTTP) from his mailbox in the server.
