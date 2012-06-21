# Load the rails application
require File.expand_path('../application', __FILE__)

ENV['HOME'] ||= `echo ~`.strip
ENV['GEM_PATH'] = File.expand_path('~/.gems') + ":" + '/usr/lib/ruby/gems/1.8'
ENV['GEM_HOME'] = File.expand_path('~/.gems')

# Initialize the rails application
Decoshows::Application.initialize!
