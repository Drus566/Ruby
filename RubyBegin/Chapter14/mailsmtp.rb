# require 'net/smtp'

# message = <<MESSAGE_END
# From: Private Person <me@privacy.net>
# To: Author of beginning ruby <test@rubyinside.com>
# Subject: SMTP e-mail test

# This is a test e-mail message.
# MESSAGE_END

# Net::SMTP.start('pop.mail.ru', 110) do |smtp|
#     smtp.send_message message, 'me@privacy.net', 'ahdpeu566@mail.ru'
# end

#----------ActionMailer-------------#

require 'action_mailer'

ActionMailer::Base.smtp_settings = {
    :address => "mail.your-domain.com",
    :port => 25,
    :authentication => :login,
    :user_name => "username"
    :password => "password"
}

class Emailer < ActionMailer::Base
    def test_email(email_address, email_body)
        mail(to: email_address, from: 'me@privacy.net', subject: 'test', body: email_body)
    end
end

Emailer.test_email('me@privacy.net', 'This is a test email!').deliver.now