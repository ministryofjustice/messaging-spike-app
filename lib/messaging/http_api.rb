require 'grape'
require 'producers/test_producer'

module Messaging
  class HttpApi < Grape::API
    format :json
    version 'v1', using: :path
    prefix 'api'

    namespace :messages do
      desc 'Get latest messages'
      get do
        {messages: Messaging::Message.list}
      end

      desc 'Publish a new message'
      params do
        requires :payload, type: Hash
      end
      post do
        Messaging::Message.new(params.payload).publish!
        status 201
      end
    end
  end
end
