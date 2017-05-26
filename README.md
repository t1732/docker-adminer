# docker-adminer

[Adminer](http://www.adminer.org/en/) is a full-featured database management
tool for the web. It is a lightweight alternative to setting up phpMyAdmin.
This is a [docker](https://www.docker.io) image that eases setup.

![](http://www.adminer.org/static/designs/hever/screenshot.png)

See also [online demo](http://adminer.sourceforge.net/adminer.php?username=).

## Usage


```bash
$ sudo docker run --name adminer -d -p 80:80 adminer  php -S 0.0.0.0
```

The above example exposes the Adminer webinterface on port 80, so that you can now browse to:

```
http://localhost/
```

This is a rather common setup following docker's conventions:

* `-d` will run a detached instance in the background
* `-p {OutsidePort}:80` will bind the webserver to the given outside port
* `adminer` the name of this docker image
