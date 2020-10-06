# Docker-Swarm Basics:

Docker-Swarm is a tool for orchestration, management and control of multiple Docker containers as a single service.
Docker-Swarm ensures the permanent availability and scaling of the system.

# Docker-Swarm basic commands:

### Docker-swarm initialisieren:

Initialise docker-swarm in the main manager:

> docker swarm init --listen-addr <ip>:2377


### Add Master to the Swarm:

> docker swarm join --token <manager-token> <manager>:2377

### Add Worker to the Swarm:

> docker swarm join --token <worker-token> <manager>:2377