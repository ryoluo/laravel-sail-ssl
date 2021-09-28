## Setup

Docker is required.

```bash
sh ./init.sh
```

## Start up containers

```bash
./vendor/bin/sail up

# run this command for the first time
# this resolves permission error
./vendor/bin/sail php artisan config:cache
```
