require 'socket'

s = UDPSocket.new
s.bind(nil, 1235)
5.times do
    text, sender = s.recvfrom(16)
    puts text
end