#
# Cookbook Name:: chef_rails_rbenv
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

%i[version user gems].each do |key|
  if node['chef_rails_rbenv'][key].nil?
    fail "node['chef_rails_rbenv']['#{key}'] is not set"
  end
end

rbenv_user_install node['chef_rails_rbenv']['version'] do
  user node['chef_rails_rbenv']['user']
  group node['chef_rails_rbenv']['group']
end

rbenv_ruby node['chef_rails_rbenv']['version'] do
  user node['chef_rails_rbenv']['user']
  group node['chef_rails_rbenv']['group']
end

rbenv_global node['chef_rails_rbenv']['version'] do
  user node['chef_rails_rbenv']['user']
  group node['chef_rails_rbenv']['group']
end

node['chef_rails_rbenv']['gems'].each do |gem|
  rbenv_gem gem do
    user node['chef_rails_rbenv']['user']
    group node['chef_rails_rbenv']['group']
    rbenv_version node['chef_rails_rbenv']['version']
  end
end
