#!/bin/bash
sudo rm -rf local-mode-cache/ nodes/ Berksfile.lock
cd docker && \
  docker-compose stop && \
  docker-compose rm --all -f && \
  docker build -t fabiohbarbosa/chef-ubuntu . && \
  docker-compose up -d && \
  docker-compose logs -f
