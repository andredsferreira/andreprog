# IP Security Protocols (IPsec)

Security is already commonly applied at application layer protocols through the use of SSL/TLS. IPsec relates to security protocols designed to work at the network layer. Why? An extra layer of security is important, and because many application protocols where not designed to work with SSL/TLS in the first place.

## IPsec services and functions

IPsec is not a single protocol but a set of protocols and services that provide security at the netwrok level.

- Encryption of user data.
- Two security modes: transport and tunnel.
- Authentication of the integrity of messages to ensure they are not changed while hoping through routers.
- Ability for devices to negotiate security algorithms and keys.
- Protection against certain types of attacks such as replay attacks.

## IPsec standards

As said, IPsec is a collection of protocols and standards. Here are the important related RFC's.

| RFC number | Name                          | Description                                     |
|------------|-------------------------------|-------------------------------------------------|
| 2401 | Security for The Internet Protocol | Describes the general architecture for implementing IPsec and how different components fit together.  |
| 2402 | IP Authentication Header Protocol (AH) | Describes the AH protocol which ensures data integrity and origin verification.  |
| 2406 | IP Encapsulating Security Payload (ESP)  | Provides encryption of the payload  |
| 2408 | Internet Security Association and Key Management Protocol (ISAKMP)  | Defines methods for exchanging keys and negotiating security associations.  |
| 2409 | The Internet Key Exchange (IKE)  | Describes the IKE protocol which is based on ISAKMP and OAKLEY and used to exchanged keys and security associations.  |
| 2412 | The OAKLEY Key Determination Protocol  | Generic key exchanging protocol.  |
