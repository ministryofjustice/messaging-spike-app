module Messaging
  class Message
    LIMIT = 5

    def initialize(payload)
      @payload = payload
    end

    def publish!
      Messaging::TestProducer.publish(@payload)
    end

    def process!
      self.class.push(@payload)
    end

    class << self
      def list(limit = LIMIT)
        redis.lrange(key, 0, limit-1).map do |payload|
          JSON.parse(payload) rescue {}
        end
      end

      def push(payload)
        redis.lpush(key, payload)
        redis.ltrim(key, 0, LIMIT-1)
      end

      private

      def redis
        Redis.current
      end

      def key
        Settings.routing_key
      end
    end
  end
end
