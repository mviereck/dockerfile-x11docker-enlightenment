# x11docker/enlightenment
enlightenment window manager, based on void linux


Base image enlightenment desktop (on debian stretch)
 - Run enlightenment desktop in docker.
 - Use x11docker to run image to run GUI applications and desktop environments in docker images.
 - Get [x11docker from github](https://github.com/mviereck/x11docker)


Run with hardware acceleration and init system runit:
```
x11docker --desktop --gpu --runit x11docker/enlightenment
```
Use option `--home` to create a persistant home folder storing your settings.
  
 # Screenshot
enlightenent desktop running with x11docker:
 
 ![screenshot](https://raw.githubusercontent.com/mviereck/x11docker/screenshots/screenshot-enlightenment.png "enlightenment windowmanager running with x11docker")
