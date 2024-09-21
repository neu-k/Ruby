require "socket"

MAX_PACKET = 1024
socket = UDPSocket.new
socket.bind("0.0.0.0", 10001)
print socket.recv(MAX_PACKET)
