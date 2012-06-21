# This file is used by Rack-based servers to start the application.
if ENV['RAILS_ENV'] == 'production'
  ENV['HOME'] = '/home/decoshowsrails'
  ENV['GEM_HOME'] = '/home/decoshowsrails/.gems'
  ENV['GEM_PATH'] = '/home/decoshowsrails/.gems'
end

require ::File.expand_path('../config/environment',  __FILE__)
run Decoshows::Application
