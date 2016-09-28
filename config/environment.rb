root_path = File.join(File.dirname(__FILE__), '..')
lib_path = File.join(root_path, 'lib')
require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts 'Run `bundle install` to install missing gems'
  exit e.status_code
end

$LOAD_PATH << root_path
$LOAD_PATH << lib_path
$LOAD_PATH << File.join(lib_path, 'messaging')
require 'messaging'

Config.load_and_set_settings(Config.setting_files('config', ENV['RACK_ENV']))
