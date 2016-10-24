#!/bin/bash
cd /opt/chef-ubuntu/ && \
  berks vendor vendor && \
  sudo chef-solo -c solo.rb -j solo.json
tail -f /dev/null
