execute 'restart-monit' do
  user "root"
  group "root"
  command "sudo service monit restart"
  action :run
end

execute 'restart-monit-managed-services' do
  user "root"
  group "root"
  command "monit restart all"
  action :run
end

