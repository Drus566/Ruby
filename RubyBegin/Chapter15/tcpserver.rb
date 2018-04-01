require 'socket'

server = TCPServer.new(1235)

while connection = server.accept
    while line = connection.gets
        break if line =~ /quit/
        puts line
        connection.puts "Received"
    end

    connection.puts "Closing the connection. Bye!"
    connection.close    
end

#to contact you enter command in terminal : telnet 127.0.0.1 1235