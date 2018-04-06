#standart lib
# require 'uri'

# puts URI.extract('Check out http://www.rubyinside.com/ or e-mail mailto:me@privacy.net').inspect
# puts URI.extract('Check out http://www.rubyinside.com/ or e-mail mailto:me@privacy.net',['http']).inspect

#----------------

# require 'uri'

# email = %{Some cool Ruby sites are http://www.ruby-lang.org/ and http://www.rubyinside.com/ and 
# http://redhanded.hobix.com/ }

# URI.extract(email,['http','https']) do |url|
#     puts "Fetching URL #{url}"
#     #Do some work here...
# end

#-------------------------
# require 'uri'
# a = URI.parse('http://www.rubyinside.com/')
# puts a
# puts a.scheme
# puts a.host
# puts a.port
# puts a.path
# puts a.query

#-----------------

# require 'uri'
# url = 'http://www.x.com:1234/test/1.html?x=y&y=z#top'
# puts URI.parse(url).port
# puts URI.parse(url).path
# puts URI.parse(url).query
# puts URI.parse(url).fragment
# #URI(url) is synonymous URI.parse

# puts URI.split('http://www.x.com:1234/test/1.html?x=y&y=z#top')

# --------- Creating URLs

# require 'uri'
# u = URI::HTTP.build(:host => 'rubyinside.com', :path => '/')
# puts u.to_s
# puts u.request_uri

# ftp_url = URI::FTP.build( :userinfo => 'username:password',
#     :host => 'ftp.example.com',
#     :path => '/pub/folder',
#     :typecode => 'a')
    
#     puts ftp_url.to_s

#------------------Change 

require 'uri'
my_url = "http://www.test.com/something/test.html"
url = URI.parse(my_url)
puts url.to_s
url.host = "www.test2.com"
url.port = 1234
puts url.to_s