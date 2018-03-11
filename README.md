# x11docker/enlightenment
Base image Enlightenment window manager (based on [Void Linux](https://www.voidlinux.eu/))
 - Run enlightenment desktop in docker.
 - Use x11docker to run GUI applications and desktop environments in docker images.
 - Get [x11docker from github](https://github.com/mviereck/x11docker)


# Command example
Run with hardware acceleration and init system runit:
```
x11docker --desktop --gpu --runit x11docker/enlightenment
```

# Options
 - Persistent home folder stored on host with   `--home`
 - Shared host folder with                      `--sharedir DIR`
 - Hardware acceleration with option            `--gpu`
 - Clipboard sharing with option                `--clipboard`
 - Sound support with option                    `--alsa`
 - With pulseaudio in image, sound support with `--pulseaudio`
 - Language locale settings with                `--lang $LANG`

Look at `x11docker --help` for further options.

# Extend base image
To add your desired applications, create your own Dockerfile with this image as a base. Example:
```
FROM x11docker/enlightenment
RUN xbps-install -Suy midori glibc
```

 # Screenshot
enlightenent desktop running with x11docker:
 
 ![screenshot](https://raw.githubusercontent.com/mviereck/x11docker/screenshots/screenshot-enlightenment.png "enlightenment windowmanager running with x11docker")
