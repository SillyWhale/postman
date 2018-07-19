# Supported tags and respective `Dockerfile` links

- [`latest` (*latest/Dockerfile*)](Dockerfile)

# Quick reference

- **Where to file issues**:  
  [https://github.com/SillyWhale/privatebin/issues](https://github.com/SillyWhale/postman/issues)

- **Maintained by**:  
  [SillyWhale](https://github.com/SillyWhale/postman)

- **Source of this description**:  
  [docs repo's directory](https://github.com/SillyWhale/_documentation)

- **Supported Docker versions**:  
  [the latest release](https://github.com/docker/docker-ce/releases/latest)

# What is privatebin ?

[Postman](https://www.getpostman.com/) description.  

# How to use this image

## Usage



```
# xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f /tmp/.docker.xauth nmerge -

# docker run -ti --rm \
  --network="host" \
  --device /dev/snd \
  -u $UID \
  -v /usr/share/icons/:/usr/share/icons/ \
  -v /etc/passwd:/etc/passwd \
  -v $HOME:$HOME \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v /tmp/.docker.xauth:/tmp/.docker.xauth \
  -e DISPLAY=$DISPLAY \
  -e XAUTHORITY=/tmp/.docker.xauth \
  sillywhale/postman
```

## Documentation

This image is well documented. [Check out the documentation at Viewdocs](http://docs.sillywhale.wtf/postman/).

# License

View [license information](https://github.com/PrivateBin/PrivateBin/blob/master/LICENSE.md) for the software contained in this image.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
