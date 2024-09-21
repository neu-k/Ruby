require "socket"

socket = UNIXSocket.new "test_socket"
print socket.gets
