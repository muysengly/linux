
# install nextcloud docker image
docker pull nextcloud:stable-fpm-alpine


docker run -d -p 8080:80 --name nextcloud \
    -v /var/www/html:/var/www/html \
    -v /var/lib/mysql:/var/lib/mysql \
    nextcloud:stable-fpm-alpine