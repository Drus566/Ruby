# require 'net/ping'

# if Net::Ping::External.new('www.google.com').ping
#     puts "Pong!"
# else
#     puts "No response"
# end

#---------Specific Port , certain service

require 'net/ping'

if Net::Ping::TCP.new('www.google.com', 80).ping
    puts "Pong!"
else
    puts "No response"
end