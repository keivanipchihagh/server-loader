# server-loader

## Stacks
Stacks are used to deploy multiple containers that usually operate together and are dependent. Most of these stacks are pre-configured for painless deployment:
- **nginx-proxy-manager:**
  - Containers:
    - nginx-proxy-manager
- **monitoring**:
  - Containers:
    - grafana
    - prometheus
    - alertmanager
    - node-exporter
    - cadvisor
- **portainer**:
  - Containers:
    - portainer
    - portainer-agent
- **postgres**:
  - Containers:
    - postgres
    - pgadmin
    - postgres-exporter
- **registry**:
  - Containers:
    - registry
    - registry-ui

## Network Architecture
To ensure flexibility and security for all services operating on the server, three Docker networks are defined:
- **nginx**
  - Type: `External`
  - Info: Containers that must **only** be accessible from the reverse-proxy (unreachable by their IPs!) and are provided secure connection over TLS.
- **public**
  - Type: `External`
  - Info: Containers that are publicly accessible by IPs over HTTP (unencrypted channel).
- **private**
  - Type: `Internal`
  - Info: Containers that are not accessible from outside world. This network is **hidden** and used for internal traffic of sensitive services.
