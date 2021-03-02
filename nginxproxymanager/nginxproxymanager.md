# Nginx Proxy Manager

I use the following docker image to manage my reverse proxying with automatic free certificate generation:
https://nginxproxymanager.com/setup/

I don't open this interface up to the www for a few reasons, one so I can easily manage access by only allowing people on my home network to access it and two so I have to use my wireguard vpn for added security.

I used docker secrets to set passwords securely so I don't accidentaly reveal them with my git repo.


