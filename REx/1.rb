require "singleton"

class Message
  include Singleton

  def morning
    "Hi, good morning!"
  end
end

p Message.instance.morning
puts

p Message.instance.class
p Message.class
