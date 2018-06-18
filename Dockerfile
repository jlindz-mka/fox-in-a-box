FROM ubuntu:16.04

# based on http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/

RUN apt-get update && apt-get install -y firefox
RUN useradd -u 501 -m developer

USER developer
ENV HOME /home/developer
CMD /usr/bin/firefox

# #!/bin/bash -e

# ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
# xhost + $ip

# docker run -ti --rm \
#        -e DISPLAY=$ip:0 \
#        -v /tmp/.X11-unix:/tmp/.X11-unix \
#        --ipc=host \
#        gui $@
