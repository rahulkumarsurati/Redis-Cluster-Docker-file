# Redis-Cluster-Docker-file

This repository contains a Dockerfile to build a Docker Image for Redis in CentOS 7.

# Base Docker Image

[zokeber/centos](https://hub.docker.com/r/zokeber/centos/)

# Usage

docker pull zokeber/redis:latest

# Create and running a container

# Create container:

For Master:
docker create -it -p 6379:6379 --name master-redis zokeber/redis

For Slave:
docker create -it -p 6379:6379 --name slave-redis zokeber/redis

# Start container:

docker start master-redis

docker start slave-redis

***We need to make some changes that allow our slave server to connect to our master instance:***

 ***Open /etc/redis.conf with your favorite text editor:***
 
 ***Edit the following lines***
 
 ***slaveof your_redis_master_ip 6379***
 
 ***Now save this change, and exit the file.Next, restart the Docker container.***
 






