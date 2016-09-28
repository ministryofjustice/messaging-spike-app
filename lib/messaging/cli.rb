require 'thor'

module Messaging
  class CLI < Thor
    desc 'console', 'Interactive console'
    def console
      load_env
      require 'pry'
      require 'hutch'
      binding.pry
    end

    desc 'start', 'Configure and starts the service'
    def start
      load_env
      Messaging::App.start!
    end

    private

    def load_env
      require_relative '../../config/environment'
    end
  end
end
