class JsonWebToken
    class << self
      KEY = "key insegura, no deployear"
      def encode(payload, exp = 72.hours.from_now)
        payload[:exp] = exp.to_i
        JWT.encode(payload, KEY)
      end
   
      def decode(token)
        body = JWT.decode(token, KEY)[0]
        HashWithIndifferentAccess.new body
      rescue
        nil
      end
    end
   end