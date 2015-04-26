# Housing!!

## Instructions for setting up server

### This is a php application which runs under apache, so have LAMP stack installed in your machine.
```
sudo pacman -S lamp-server^ #if you're a awesome arch linux user
sudo apt-get install lamp-server^ #if you're a ubuntu user or debian
```

### What about Windows?
#### Are you kidding? :D

### Setting up server.
Go to root of your apache server, usually ```/srv/http``` in arch linux and ```/var/www``` in ubuntu.

Now clone this repository on root server of cousrse.

```
git clone git@github.com:cyberhck/housing.git .
```
Make sure you have it in your root of host or any other virtual host.

Open mysql and setup a database for housing.

```
mysql -u root -p
CREATE DATABASE housing;
```
Should create a database, now open ```config.php``` file and change the ```$DB_NAME```,```$DB_PASS``` and ```$DB_NAME```

### Final Step
#### Just kidding! You're all done! Open Browser and happy hacking.


For Synced Maps, please refer to other repository [github.com/cyberhck/syncMap](github.com/cyberhck/syncMap)