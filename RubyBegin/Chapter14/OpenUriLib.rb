require 'open-uri'

# f = open('http://www.rubyinside.com/test.txt')

# puts "The document is #{f.size} bytes in length"

# f.each_line do |line|
#     puts line
# end

# puts f.readlines.join

# open('http://www.rubyinside.com/test.txt') do |f|
#     puts f.readlines.join
# end


# url = URI.parse('http://www.rubyinside.com/test.txt')
# url.open { |f| puts f.read }
# puts URI.parse('http://www.rubyinside.com/test.txt').open.read


# f = open('http://www.rubyinside.com/test.txt')

# puts f.content_type
# puts f.charset
# puts f.last_modified


f = open('http://www.rubyinside.com/test.txt', {'User-Agent' => 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)'})
puts f.read