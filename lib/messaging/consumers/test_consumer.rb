module Messaging
  class TestConsumer
    include Hutch::Consumer

    consume Settings.routing_key
    queue_name Settings.queue_name

    def process(msg)
      Messaging::Message.new(msg.payload).process!
    end
  end
end
