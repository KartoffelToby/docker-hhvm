# docker-hhvm

A Debian based Container with HHVM+Pagespeed+apache2


## Build the Container

```sh
$ sudo docker build -t="kartoffeltoby/docker-hhvm" .
```

## Run Container

```sh
$ sudo docker run --restart always --rm -itd  -p 80:80 -v php-app/:/app/ kartoffeltoby/docker-hhvm
```
