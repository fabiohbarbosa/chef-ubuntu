link 'mvn link' do
  to '/opt/apache-maven/bin/mvn'
  target_file '/usr/local/bin/mvn'
  action :create
end

link 'mvnDebug link' do
  to '/opt/apache-maven/bin/mvnDebug'
  target_file '/usr/local/bin/mvnDebug'
  action :create
end
