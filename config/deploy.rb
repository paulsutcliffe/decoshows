require "bundler/capistrano"

default_environment['PATH']='/usr/lib/ruby/gems/1.8/bin:/home/decoshowsrails/.gems/bin:/usr/local/bin:/usr/bin:/bin'
default_environment['GEM_PATH']='/home/decoshowsrails/.gems:/usr/lib/ruby/gems/1.8'

set :user, "galeriadecoshows"
set :domain, "yorkville.dreamhost.com"
set :project, "decoshows"
set :application, "decoshows"
set :applicationdir, "/home/#{user}/#{user}"
set :repository,  "git@github.com:paulsutcliffe/decoshows.git"
default_run_options[:pty] = true

ssh_options[:forward_agent] = true
set :git_enable_submodules, 1
set :scm, :git
set :scm_passphrase, ""
set :branch, "master"
set :deploy_via, :remote_cache
set :git_shallow_clone, 1
set :scm_verbose, true
set :deploy_to, applicationdir

role :web, domain                          # Your HTTP server, Apache/etc
role :app, domain                          # This may be the same as your `Web` server
role :db,  domain, :primary => true # This is where Rails migrations will run

set :use_sudo, false

after 'deploy:create_symlink' do
  run "chmod 775 #{applicationdir}/current/public/dispatch.fcgi"
end
