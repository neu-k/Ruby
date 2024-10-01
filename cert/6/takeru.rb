require "uri"
require "net/http"
require "nokogiri"

url = URI.parse("http://www.takeru-official.tokyo/profile/")

net = Net::HTTP.new(url.host, url.port)
net.start do |http|
  res = http.get(url.path)

  doc = Nokogiri::HTML(res.body)
  target = doc.css("h3 + p").text
  puts "◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎" + "\n" + target + "\n" + "◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎"

  File.open("takeru_profile.txt", "w") do |f|
    f.write(target)
  end
end

puts "target 'h3 + p' saved to takeru_profile.txt"
