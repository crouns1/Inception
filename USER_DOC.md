# USER_DOC

## Start the stack

From the repository root, run:

```bash
make
```

Or run:

```bash
docker compose -f srcs/docker-compose.yml up -d --build
```

## Stop the stack

```bash
make down
```

Or run:

```bash
docker compose -f srcs/docker-compose.yml down
```

## Access the website

Open the configured domain in a browser:

```text
https://<domain>
```

The WordPress administration panel is available at:

```text
https://<domain>/wp-admin/
```

Use the WordPress credentials defined in the project environment or secret files. Do not commit or share these credentials.

## Manage credentials

Credentials are configured through the project `.env` file or secret files. Change the example passwords before starting the project. Database credentials and WordPress credentials must match the values used by the services.

## Basic checks

Check the service status:

```bash
docker compose -f srcs/docker-compose.yml ps
```

View logs:

```bash
docker compose -f srcs/docker-compose.yml logs
```

The NGINX, WordPress, and MariaDB containers should be running. If the website does not open, check the logs and confirm that the configured domain points to the host machine.
