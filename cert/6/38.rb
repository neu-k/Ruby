require "net/http"

res = nil
Net::HTTP.start("www.example.com") {|http|
  res = http.get("/")
}

puts "res: #{res}"
puts "res.class: #{res.class}"
puts "res.class.superclass: #{res.class.superclass}"
puts "res.code: #{res.code}"
puts "res.body.length: #{res.body.length}"
