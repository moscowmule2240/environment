#
# Cookbook Name:: mysql-conf
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file "/etc/mysql/conf.d/character-set.cnf" do
  source "character-set.cnf"
  owner "mysql"
  group "mysql"
  mode "755"
end

cookbook_file "/etc/mysql/conf.d/engine.cnf" do
  source "engine.cnf"
  owner "mysql"
  group "mysql"
  mode "755"
end

service 'mysqld' do
  action [:restart, ]
end
