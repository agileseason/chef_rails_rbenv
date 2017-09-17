#
# Cookbook Name:: chef_rails_rbenv
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

include_recipe 'ruby_build'
include_recipe 'ruby_rbenv::user'
