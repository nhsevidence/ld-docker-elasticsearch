# Elastic instance

This repo contains the dockerfile and scripts for building a container running elastic.  See the scripts directory for elasticsearch c
onfiguration files.

## Build requirements
* docker

## Deploy requirements
* rancher-compose

There is also a docker-compose file that is compatible with the rancher-compose tool for the rancher container service.
i.e to deploy to rancher:
```
rancher-compose -p elastic up
```
