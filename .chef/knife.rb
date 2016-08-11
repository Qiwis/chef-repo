# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "qiwis"
client_key               "#{current_dir}/qiwis.pem"
validation_client_name   "chef-pract-validator"
validation_key           "#{current_dir}/chef-pract-validator"
chef_server_url          "https://api.chef.io/organizations/chef-pract"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
