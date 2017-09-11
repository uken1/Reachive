server '52.199.187.94', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/home/ubuntu/.ssh/id_rsa'