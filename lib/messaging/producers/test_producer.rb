module Messaging
  class TestProducer

    def self.publish(payload)
      Hutch.connect
      Hutch.publish(Settings.routing_key, payload)
    end

  end
end
