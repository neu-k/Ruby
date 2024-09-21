require "socket"

server = TCPServer.new 10080
loop {
  client = server.accept
  client.puts "Hello TCPServer."
  client.close
}

=begin

% telnet localhost 10080
Trying ::1...
Connected to localhost.
Escape character is '^]'.
Hello TCPServer.
Connection closed by foreign host.

=end