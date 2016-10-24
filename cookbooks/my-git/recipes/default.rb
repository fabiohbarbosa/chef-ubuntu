bash 'git config' do
  code <<-EOH
    if [ $SUDO_USER ]; then USER=$SUDO_USER; else USER=`whoami`; fi

    su $USER -c "git config --global credential.helper store"
    su $USER -c "git config --global user.email "fabiohbarbosa@gmail.com""
    su $USER -c "git config --global user.name "Fabio H G Barbosa""

    EOH
end
