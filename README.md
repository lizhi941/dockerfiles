# dockerfiles

> A collection of dockerfiles to create containers

This is a fork of the excellent dockers at `http://github.com/Ensequence/dockerfiles`.

[Docker](http://docker.io) is an open source project to pack, ship and run any
application as a lightweight container. These *dockerfiles* build containers
that can be run almost anywhere with isolation and repeatability guarentees.


### docker

If you're convinced to use docker already, and __you are using Mac OSX__, you
can simply install using the `install_docker.sh` script. This will install
docker (and all dependencies) into your `~/src/docker` folder and then bring up
the VM. You can clone this repo and run the `install_docker.sh` script:

```
$ git clone https://github.com/Nekroze/dockerfiles.git && cd dockerfiles
$ ./install_docker.sh
```

Alternatively, you can cURL and install right away:

```
$ curl https://raw.github.com/Nekroze/dockerfiles/master/install_docker.sh -s | bash
```

Then, you can connect to that VM via:

```
$ cd ~/src/docker
$ vagrant ssh
```

From there, you can install images (`docker pull`) or run images / containers (`docker run`)...

