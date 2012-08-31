require 'rubygems'

# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

# Set facebook auth vars
ENV['FACEBOOK-APPID'] ||= YAML.load_file(File.expand_path("config/facebook_config.yml"))['appid']
ENV['FACEBOOK-SECRET'] ||= YAML.load_file(File.expand_path("config/facebook_config.yml"))['secret']