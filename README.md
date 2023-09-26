# HOW TO USE

## Edit domain in this files:

- docker-compose.yml
- Caddyfile

```
sed -i 's/[[DOMAIN]]/filetransfer.domain.yyz/g' docker-compose.yml
sed -i 's/[[DOMAIN]]/filetransfer.domain.yyz/g' caddy/Caddyfile
```

## Howto

### Clone

```
cd /opt
git clone https://github.com/lichti/sftp-filestash.git
```

### Build

```
cd /opt/sftp-filestash
docker compose build
```

### Run

```
cd /opt/sftp-filestash
docker compose up -d 
```

### Add new client

Add new block like this in the docker-compose.yml
```
  sftp-cliente-<<new>>:
      build:
        context: ./sftp-docker/docker
        args:
          SSH_MASTER_USER: cliente-<<new>>
          SSH_MASTER_PASS: cliente-<<new>>
      restart: always
      hostname: cliente-<<new>>.filetransfer
      volumes:
        - ./data/cliente-<<new>>:/data
```

create a new data directory
```
mkdir /opt/sftp-filestash/data/client-<<new>>
```