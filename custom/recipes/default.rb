service "monit" do
  action :restart
end

execute 'restart-monit-managed-services' do
  user "root"
  group "root"
  command "monit restart all"
  action :run
end

