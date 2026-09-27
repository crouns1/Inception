# DEV_DOC

## Prerequisites

Install the following tools:

- Docker Engine.
- Docker Compose v2.
- Make.

Verify the installation:

```bash
docker --version
docker compose version
make --version
```

## Setup

Clone the repository and enter its root directory. Configure the required domain, database values, WordPress values, and secrets in the project `.env` file or secret files.

Build and start the services:

```bash
make
```

The stack contains NGINX, WordPress with PHP-FPM, and MariaDB. Each service runs in its own container. NGINX is exposed to the host. WordPress and MariaDB use the internal Docker network.

## Makefile usage

```bash
make              # Build and start the stack
make down         # Stop and remove containers and the network
make clean        # Remove generated containers and images according to the Makefile
make fclean       # Full cleanup according to the Makefile
make re           # Rebuild the project
```

Use the targets provided by the project Makefile if their names or behavior differ.

## Docker Compose commands

```bash
docker compose -f srcs/docker-compose.yml up -d --build
docker compose -f srcs/docker-compose.yml ps
docker compose -f srcs/docker-compose.yml logs

docker compose -f srcs/docker-compose.yml down
```

Open a shell in a service for diagnosis:

```bash
docker compose -f srcs/docker-compose.yml exec nginx sh
docker compose -f srcs/docker-compose.yml exec wordpress sh
docker compose -f srcs/docker-compose.yml exec mariadb sh
```

## Data persistence

MariaDB data and WordPress files are stored in Docker volumes. Removing containers with `docker compose down` does not remove these volumes.

To remove the volumes and reset the stored data:

```bash
docker compose -f srcs/docker-compose.yml down -v
```

This command deletes the database, WordPress content, users, settings, and uploaded files stored in the volumes. Do not use it unless a full reset is intended.
