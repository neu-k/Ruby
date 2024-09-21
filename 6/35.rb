require "net/http"

net = Net::HTTP.new("www.example.com")
net.start
res = net.get("/index.html")
net.finish

# print res.body

File.open("response.html", "w") do |f|
  f.write(res.body)
end
