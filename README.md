# Homelab
This is a description of my homelab.

# Docker
I host all my applications in docker for ease of use, easy updating and easy deploying.

### Wireguard
I use the wireguard client docker application from linuxserver. It is necessary that you place your wireguard config file as such:
```
./wireguard/config/wg0.conf
```
You must also append the following lines to your config or you wont be able to access the applications locally.
You can find the config here:
[Maintaining local access to attached services](https://docs.linuxserver.io/images/docker-wireguard#maintaining-local-access-to-attached-services)

### Environment .env file
I made an example.env file that has all the variables you need to fill out on your own. Just copy the example.env to ".env" without the quotation marks and fill everything in. 

# Deploying on your machine
Please read this section completely before blindly following it.

Clone this repo and follow the .env file instructions above. Make sure you have docker and docker-compose installed and run the following command:
```
make install
```
or the equivalent:
```
docker-compose --env-file .env up -d maria_db phpmyadmin
```

All your applications are now up and running. Before you go any further you need to open up phpmyadmin under port 8088 and log in as root with hostname maria_db. You set the password yourself in the .env file.

Next add two databases

``` 
nextcloud
```
```
bookstack
```
```
wordpress_josephine
```

and add the corresponding users under the same name within those databases. Give them full rights and set the passwords the same as you did in the .env file.

Now go back to your server and run the following command:
```
make start
```
Or the following equivalent command
```
docker-compose --env-file .env up -d 
```
# Updating containers
Run the following command to update and reboot containers in one go:
```
make update
```
Or the equivalent:
```
docker-compose pull && docker-compose --env-file .env up -d
```

# Backup
I am currently working on a good duplicati backup solution that would run in this same stack, I have not finished it yet so youll have to fix it on your own.