require 'config'
require 'redis'
require 'hutch'

module Messaging
  Dir.glob('lib/messaging/*.rb').each { |f| require f }
end
