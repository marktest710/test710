# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

if node['platform_family'] == "debian"
	package = "apache2"
elseif node ['platform_family'] == "rhel"
	package = "httpd"
end

package 'apache2' do
	package_name 'apache2'
	action :install
end

service 'apache2' do
	service_name 'apache2'
	action [:start, :enable]
end



