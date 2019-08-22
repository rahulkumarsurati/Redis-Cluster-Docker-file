# Pull base image
FROM zokeber/centos

RUN yum install epel-release -y && \
    yum update -y && \
    yum install redis -y && \
    yum clean all

# Copy config redis
ADD etc/redis.conf /etc/redis.conf

# User
USER root

# Mountable directories
VOLUME ["/var/lib/redis"]

# Set the environment variables
ENV HOME /var/lib/redis

# Working directory
WORKDIR /var/lib/redis

CMD ["/usr/bin/redis-server", "/etc/redis.conf"]

# Expose ports.
EXPOSE 6379
