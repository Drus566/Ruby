require 'socket'

server = TCPServer.new(1235)

loop do 
    #every time new Thread processing new client
    Thread.start(server.accept) do |connection|
        while line = connection.gets
            break if line =~ /quit/
            puts line
            connection.puts "Received!"
        end

        connection.puts "Closing the connection. Bye!"
        connection.close
    end
end