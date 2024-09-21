require "uri"
require "net/http"

url = URI.parse("http://www.takeru-official.tokyo/profile/")

net = Net::HTTP.new(url.host, url.port)
net.start do |http|
  res = http.get(url.path)

  File.open("takeru.html", "w") do |f|
    f.write(res.body)
  end
end

puts "Response saved to takeru.html"
