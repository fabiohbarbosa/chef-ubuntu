apt_package 'curl'

execute 'install docker' do
  command 'curl -fsSL https://get.docker.com/ | sh'
  action :run
end

bash 'add docker user' do
  code <<-EOH
    if [ $SUDO_USER ]; then USER=$SUDO_USER; else USER=`whoami`; fi
    usermod -aG docker $USER
    EOH
end

execute 'install docker-compose' do
  command 'curl -L https://github.com/docker/compose/releases/download/1.7.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose'
  action :run
end

execute 'chmod docker-compose' do
  command 'chmod +x /usr/local/bin/docker-compose'
  action :run
end
