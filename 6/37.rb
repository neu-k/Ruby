require "net/http"

req = Net::HTTP::Get.new("/ja/documentation")
req.basic_auth("rubyuser", "password")

p req["authorization"].class
p req["authorization"]
