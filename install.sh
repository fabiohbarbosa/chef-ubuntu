#!/bin/bash
exists()
{
  command -v "$1" >/dev/null 2>&1
}

if ! exists ruby; then
  sudo apt-get install ruby-full build-essential -y
else
  sudo apt-get install build-essential -y
fi

sudo apt-get install build-essential -y
sudo gem update --no-rdoc --no-ri
sudo gem install berkshelf ohai chef --no-rdoc --no-ri
berks vendor vendor
sudo chef-solo -c solo.rb -j solo.json
