# server-loader
pre-configured stacks and scripts to deploy my favorite production-ready services in a nutshell 🐳
> **Note**
> Use `.env.template` files as templates to create `.env` files that will be used in the stacks. All sensitive data have been emptied, so fill them yourself you must (:

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
  - Type: `Internal`
  - Info: Containers that are **only** be accessible from the reverse-proxy (unreachable by their IP:PORT!) which are comminucated with over TLS.
- **public**
  - Type: `External`
  - Info: Containers that are publicly accessible by IP:PORT over HTTP (unencrypted channel).
- **private**
  - Type: `Internal`
  - Info: Containers that are not accessible from the outside world. This network is **hidden** and used for internal traffic of sensitive data.
