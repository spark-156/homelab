# Homelab
This is a description of my homelab.

# OS: Ubuntu 20.04 LTS
I chose this OS because of its familiarity, its relative up to date packages, its popularity and the relatively long term support.

## Specs
16GB of slow ddr3 ram
2 core intel processor (no hyperthreading)
120 GB ssd
4 TB nas hard drive

## Install
I installed it upon a 120 GB SSD of which 32 GB's are SWAP.
This might seem like overkill to some but I thought that I'd rather be safe than sorry and just doubled my ram in swap size.
The rest of the drive is ofcourse formatted as ext4 and mounted at '/'.

## Docker
I place all my docker secrets in a .secret/ directory at the same level as the accompying docker-compose.yml .

I also have a docker network called
```
reverseproxy
```
that I connect all my services to so I can easily expose them to the www.