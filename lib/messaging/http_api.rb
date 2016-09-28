require 'grape'
require 'producers/test_producer'

module Messaging
  class HttpApi < Grape::API
    format :json
    version 'v1', using: :path
    prefix 'api'

    desc 'Get latest messages'
    get :messages do
      {messages: Messaging::Message.list}
    end

    desc 'Publish a new message'
    params do
      requires :payload, type: Hash
    end
    post :messages do
      Messaging::TestProducer.publish(params.payload)
      status 201
    end
  end
end
