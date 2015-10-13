# Supported tags

* `8`, `latest` - Initial owncloud:8 with APCu enabled

## What is ownCloud-apcu

The default docker image hasn't enabled any memcached. This docker installs `php-apcu` and enables it. Suitable if you are going to run Owncloud in a single instance. If you are running Owncloud in multiple instances for load balancing, use memcached. You can look at this dockers [entrypoint-apcu.sh](https://github.com/aheimsbakk/owncloud-apcu/blob/master/entrypoint-apcu.sh) to see how to preseed Owncloud configuration.

## Start ownCloud-apcu

```
docker run -d -p 80:80 -v ./my_html:/var/www/html owncloud-apcu:latest
```

###### vim: set syn=markdown spell spl=en:
