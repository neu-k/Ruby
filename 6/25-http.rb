# require "socket"

# server = TCPServer.new("0.0.0.0", 10080)
# loop {
#   client = server.accept
#   client.puts "Hello TCPServer."
#   client.close
# }

require "socket"

server = TCPServer.new(10079)
puts "Server is running on port 10079..."
loop do
  client = server.accept
  request = client.gets
  puts "Client connected: #{client.peeraddr[2]}"
  puts "Request: #{request}"

  response = "Hello TCPServer."
  headers = [
    "HTTP/1.1 200 OK",
    "Content-Type: text/plain",
    "Content-Length: #{response.bytesize}",
    "Connection: close",
  ]

  client.puts headers.join("\r\n")
  client.puts "\r\n"
  client.puts response
  client.close
  puts "Client disconnected."
end