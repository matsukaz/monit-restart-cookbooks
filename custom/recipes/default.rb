execute 'restart-monit' do
  user "root"
  group "root"
  command "sudo service monit restart"
  action :run
end

