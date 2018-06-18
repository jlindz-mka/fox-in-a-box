# #!/bin/bash -e

ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
/opt/X11/bin/xhost + $ip

/usr/local/bin/docker run -ti --rm \
    -e DISPLAY=$ip:0 \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --ipc=host \
  fox-in-a-box $@
