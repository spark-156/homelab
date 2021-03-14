# List of all services including link and ports

## Docker

| Service | Port | Link | www access | httpAuth |
| ------- | ---- | ---- | --- | ---|
| [Nginx Proxy Manager](https://nginxproxymanager.com/) | 81 | [192.168.178.20:81](http://192.168.178.20:81/) | False | False |
| [Nextcloud](https://hub.docker.com/_/nextcloud/) | 82 | [cloud.lucabergman.nl](https://cloud.kucabergman.nl) | True | False |
| [Bookstack](https://github.com/linuxserver/docker-bookstack) | 83 | [wiki.lucabergman.nl](https://wiki.lucabergman.nl) | True | False |
| [Firefly](https://docs.firefly-iii.org/firefly-iii/installation/docker/) | 84 | [budget.lucabergman.nl](https://budget.lucabergman.nl) | True | False |
| [Deluge](https://docs.linuxserver.io/images/docker-deluge) | 85 | [deluge.lucabergman.nl](https://deluge.lucabergman.nl) | True | True |
| [Portfolio](https://github.com/spark-156/portfolio) | 86 | [www.lucabergman.nl](https://www.lucabergman.nl) | True | False |
| [Plex](https://docs.linuxserver.io/images/docker-plex) | 87 | [plex.lucabergman.nl](https://plex.lucabergman.nl) | True | False |


## Bare metal

| Service | Port | Link | www access |
| ------- | ---- | ---- | --- |
| [Wireguard](https://linuxize.com/post/how-to-set-up-wireguard-vpn-on-ubuntu-20-04/) | 51820/UDP | None | In a way