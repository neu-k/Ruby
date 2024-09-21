require "socket"

socket_name = "test_socket"
if File.exist?(socket_name) && File.socket?(socket_name)
  File.unlink socket_name
end

server = UNIXServer.new socket_name
loop {
  client = server.accept
  client.puts "Hello UNIXServer!"
  client.close
}
