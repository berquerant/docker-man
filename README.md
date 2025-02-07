# docker-man

Docker images for running man.

# Usage

``` shell
make debian
docker run --rm -it -p 80:80 docker-man:debian man
```

Point your browser to http://localhost/cgi-bin/man/man2html
