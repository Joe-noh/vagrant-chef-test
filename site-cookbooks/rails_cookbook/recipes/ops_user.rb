
user 'ops' do
  action   :create
  home     "/home/ops"
  supports manage_home: true
  shell    "/bin/bash"
end

directory "/home/ops" do
  action :create
  owner  "ops"
end

