# https://github.com/rbenv/ruby-build/releases
default['chef_rails_rbenv']['version'] = nil
default['chef_rails_rbenv']['user'] = 'devops'
default['chef_rails_rbenv']['group'] = 'devops'

default['chef_rails_rbenv']['gems'] = [
  { name: 'bundler' }
]
