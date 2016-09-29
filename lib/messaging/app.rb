require 'puma/cli'

module Messaging
  class App
    class << self
      def start!
        Puma::CLI.new(['-p', Settings.app_port]).run
      end
    end
  end
end
