# require 'resolv'

# ip = "192.0.34.166"

# begin 
#     puts Resolv.getname(ip)
# rescue
#     puts "No hostname associated with #{ip}"
# end

# puts Resolv.getaddress("www.google.com")

# Resolv::DNS.open do |dns|
#     mail_servers = dns.getresources("google.com", Resolv::DNS::Resource::IN::MX)
#     mail_servers.each do |server|
#         puts "#{server.exchange.to_s} - #{server.preference}"
#     end
# end

#---------- like a SMTP, but directly----------

require 'resolv'
require 'net/smtp'

from = "your-email@example.com"
to = "another-email@example.com"

message = <<MESSAGE_END
From: #{from}
To: #{to}
Subject: Direct e-mail test

This is a test e-mail message
MESSAGE_END

to_domain = to.match(/\@(.+)/)[1]

Resolv::DNS.open do |dns|
    mail_servers = dns.getresources(to_domain, Resolv::DNS::Resource::IN::MX)
    mail_server = mail_servers[rand(mail_servers.size)].exchange.to_s

    Net::SMTP.start(mail_server) do |smtp|
        smtp.send_message message, from, to
    end
end

