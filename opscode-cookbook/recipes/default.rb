#
# Cookbook Name:: opscode-cookbook
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
# sudo opsworks-agent-cli get_json
template "#{node[:deploy][:ocl][:deploy_to]}/application.yml" do
  source "application.yml.erb"
  mode 0666
  owner "root"
  group "root"
  variables({
     :foo => 'bar',
     :dbhost => node[:deploy][:ocl][:database][:host]
  })
end
