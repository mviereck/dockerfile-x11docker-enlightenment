# x11docker/enlightenment
#
# Run enlightenment desktop in docker. 
#
# Use x11docker to run image. 
# Get x11docker script and x11docker-gui from github: 
#   https://github.com/mviereck/x11docker 
#
# Run with hardware acceleration and init system runit:
#   x11docker --desktop --gpu --runit x11docker/enlightenment
#
# Use option --home to create a persistant home folder.

FROM voidlinux/voidlinux

RUN xbps-install -Su -y
RUN xbps-install -S -y enlightenment liberation-fonts-ttf \
    ConsoleKit2 leafpad lxterminal \
    mesa-ati-dri mesa-intel-dri mesa-nouveau-dri

RUN ln -s /etc/sv/dbus       /etc/runit/runsvdir/default ;\
    ln -s /etc/sv/consolekit /etc/runit/runsvdir/default

CMD enlightenment_start