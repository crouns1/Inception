*This project has been created as part of the 42 curriculum by jait-chd.*

# Description

This project builds a small infrastructure using Docker Compose. It contains three services running in separate containers:

- NGINX with TLS.
- WordPress with PHP-FPM.
- MariaDB.

NGINX is the only service exposed to the host. WordPress and MariaDB communicate through a private Docker network. WordPress and MariaDB data are stored in persistent volumes.

# Instructions

Build and start the stack from the repository root:

```bash
make
```

The stack can also be started with:

```bash
docker compose -f srcs/docker-compose.yml up -d --build
```

Stop the stack with:

```bash
make down
```

Check the containers with:

```bash
docker compose -f srcs/docker-compose.yml ps
```

Open the website at the configured domain, for example:

```text
https://<domain>
```

The WordPress administration panel is available at:

```text
https://<domain>/wp-admin/
```

# Resources

The project uses the following resources:

- [Docker Compose documentation](https://docs.docker.com/compose/)
- [NGINX documentation](https://nginx.org/en/docs/)
- [WordPress documentation](https://wordpress.org/documentation/)
- [MariaDB documentation](https://mariadb.com/kb/en/documentation/)

AI was used to help structure and proofread the documentation and to explain Docker, NGINX, WordPress, MariaDB, volumes, networks, and Compose commands. The project configuration and implementation remain the responsibility of the student.
