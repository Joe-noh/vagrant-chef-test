
directory "/var/www/rails_project" do
  action    :create
  owner     "ops"
  recursive true
end

template "/etc/nginx/sites-available/default" do
  action   :create
  source  "default.conf.erb"
  notifies :reload, "service[nginx]"
end

