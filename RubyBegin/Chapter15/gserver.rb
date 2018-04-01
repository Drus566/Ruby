# require 'gserver'

# class HelloServer < GServer
#     def serve(io)
#         io.puts("Say something to me:")
#         line = io.gets
#         io.puts("You said '#{line.chomp}'")
#     end
# end

# #HelloServer.new(port,ip,count connect, logging on/off(true or false))
# server = HelloServer.new(1235, '127.0.0.1', 4)
# server.start

# server2 = HelloServer.new(1236, '127.0.0.1', 4)
# server2.start

# # Running until 10 seconds pass
# sleep 10
# #Don't call when multiple server
# # server.join

# -------------- Manage currently running servers -----------------

require 'gserver'

class HelloServer < GServer
    def serve(io)
        io.puts("To stop this server, type 'shutdown'")
        self.stop if io.gets =~ /shutdown/
    end
end

port = 1235

#Check port available 
if GServer.in_service?(port)
    puts "Can't create new server. Already running!"
else 
    server = HelloServer.new(port)
end

server.start 

loop do
    break if server.stopped?
end

puts "Server has been terminated"