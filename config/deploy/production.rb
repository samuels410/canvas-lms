server "163.172.81.198", :app, :web, :db, :primary => true
set :deploy_to, "/var/deploy/capistrano/sublime-lms"
set :branch,    "deploy"
set :scm_passphrase, ""
set :sublime_lms_data_files, "#{deploy_to}/data/files"

