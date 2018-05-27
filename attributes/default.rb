# https://github.com/rbenv/ruby-build/releases
default['chef_rails_rbenv']['git_ref'] = nil
default['chef_rails_rbenv']['version'] = nil
default['chef_rails_rbenv']['user'] = 'devops'

default['chef_rails_rbenv']['gems'] = %w[bundler]
