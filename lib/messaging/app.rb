require 'puma/cli'

module Messaging
  class App
    class << self
      def start!
        configure
        run
      end

      def configure
      end

      def run
        Puma::CLI.new(['-p', Settings.port]).run
      end
    end
  end
end
