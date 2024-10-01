require "net/http"

net = Net::HTTP.new("www.example.com")
net.start {|http|
  res = http.get("/index.html")
  puts res.body
}
