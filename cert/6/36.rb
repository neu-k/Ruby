require "net/http"

http = Net::HTTP.new("www.example.com", 80)
req = Net::HTTP::Get.new("/index.html")
res = http.request(req)

puts res.body
