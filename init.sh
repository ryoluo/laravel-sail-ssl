docker info > /dev/null 2>&1

# Ensure that Docker is running...
if [ $? -ne 0 ]; then
    echo "Docker is not running."

    exit 1
fi

cp .env.example .env

docker run --rm \
    -v $(pwd):/opt \
    -w /opt \
    laravelsail/php80-composer:latest \
    bash -c "composer install && \
             php ./artisan sail:install --with=mysql,redis,meilisearch,mailhog,selenium && \
             php ./artisan key:generate"
