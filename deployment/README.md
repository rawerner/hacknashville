###Provision A Server
- TBD: Probaby using Ansible

###Deploy New Versions
- TBD Ansible or Capistrano

###Stack
- Server OS: Ubuntu 14.04
- Production DB: PostgreSQL
- App Server: Passenger
- Reverse Proxy: Nginx

###Environment Variables
- Two environment variables are required for deployment and provisioning:

<code>

export RDS_USERNAME="app_and_db_server_username";

export RDS_PASSWORD="db_password";

</code>
###Configuration management
- TBD
