require 'net/pop'

mail_server = Net::POP3.new('pop.yandex.ru', 110)

begin 
    mail_server.start('zxandruxazx56@yandex.ru','Q1o0o0q1h6566')
    if mail_server.mails.empty?
        puts "No mails"
    else
        puts "#{mail_server.mails.length} mails waiting"
    end
rescue
    puts "Mail error"
end

mail_server.mails.each do |m|
    mail = m.pop
    puts mail
end

mail_server.mails.each do |m|
    m.delete if m.pop =~ /\bthis is a spam e-mail\b/i
end

mail_server.mails.each do |m|
    m.delete if m.header =~ /Subject:.+?medicines\b/i
end

