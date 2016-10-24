apt_package 'sudo'

bash 'echo /etc/sudoers' do
  code <<-EOH
    if [ $SUDO_USER ]; then USER=$SUDO_USER; else USER=`whoami`; fi
    echo $USER 'ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
    EOH
end
