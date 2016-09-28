require 'rack/static'

module Messaging
  HttpServer = Rack::Builder.new do
    run Rack::Cascade.new([Messaging::HttpApi.new])
  end
end
