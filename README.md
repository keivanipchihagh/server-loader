# server-loader

## Network Architecture
To ensure flexibility and security for all services operating on the server, three Docker networks are defined:
### nginx
- External: **False**
- Description: All containers that must *ONLY* be accessible from beind the revere-proxy are attched to this network, which are forced to use HTTPS.

### public
- External: **True**
- Description: All containers that are publicly accessible by server IP.

### private
- External: **False**
- Description: All containers that are must *NOT* be accessible from outside server. This network is hidden and used only for internal traffic.
