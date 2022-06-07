# This sample is depricated. A plugin [🚢 Sail-SSL](https://github.com/ryoluo/sail-ssl) is now available.

Check it out!

---

Old contents are below.

## Setup

Docker is required.

```bash
# create .env file
cp .env.example .env

# install modules
docker run --rm \
    -v $(pwd):/opt \
    -w /opt \
    laravelsail/php80-composer:latest \
    bash -c "composer install && \
             php ./artisan key:generate"

# generate server certs
openssl req -x509 -nodes -newkey rsa:2048 -days 3650 \
    -keyout ./nginx/certs/server.key \
    -out ./nginx/certs/server.crt
```

## Start up containers

```bash
./vendor/bin/sail up

# run this command for the first time
# this resolves permission error
./vendor/bin/sail php artisan config:cache
```

## Access application
By default, you can access app from any of the following address:
- https://192.168.64.10
- https://localhost:50443
