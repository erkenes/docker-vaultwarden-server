# vaultwarden-server

This repository helps to host your own [vaultwarden](https://github.com/dani-garcia/vaultwarden) instance on your server or a raspberry-pi.

## Usage

Edit your settings in the `.env` file.

Start the containers with

```shell
docker-compose up -d --build nginx
```

:warning: You have to install a custom [nginx-proxy](https://github.com/erkenes/nginx-proxy) as well. 

## Settings

In the docker-compose.yml file the admin-token is disabled. If this setting is disabled you are not able to open the admin page (`yourhost.local/admin`).