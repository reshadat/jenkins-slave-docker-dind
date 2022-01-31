# Jenkins Slave with Docker Engine and Docker Compose inside (Jenkins Swarm Plugin)

Docker images for Jenkins Slave with Docker Engine, Docker Compose, Maven inside.

## Usage

Bind `/var/run/docker.sock` from host for stable Jenkins Docker-in-Docker slave:

    $ docker run --name=worker \
                 -v /var/run/docker.sock:/var/run/docker.sock \
             eeacms/jenkins-slave-dind:1.13

Forked from [eeacms/jenkins-slave-dind](https://github.com/eea/eea.docker.jenkins.slave-dind). Check the original repo for more options.
