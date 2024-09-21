require "socket"

socket = UDPSocket.new

socket.send("Hello UDP.\n", 0, "localhost", 10001)
socket.close
