# Storage
This explains the way I set up my storage. Long story short, I e used MergerFS to combine all my future drives in to one folder.
My plan is to also add snapraid later to add a software parity drive that takes snapshots of the other drives.

### Step by step
*Replace all "*" with your own correct names

1. Format drives using the following commands to linux filetype using a GPT partition table.
```
sudo fdisk /dev/sd*
```
2. Write the filesystem to the drives
```
mkfs.ext4 /dev/sd*
```
3. Find UUID
```
lsblk -f
```
4. Add /etc/fstab entry for all drives
```
UUID=InstertUUIDHere /mnt/drive1 ext4 defaults 0 0
```
5. Add mergerfs entry at the end
```
/mnt/drive* /mnt/pool fuse.mergerfs allow_other,use_ino 0 0
```
6. Create directory's for all mount points
```
sudo mkdir /mnt/drive1
```
... for all drives
```
sudo mkdir /mnt/pool
```
7. Mount all 
```
sudo mount -a
```
