#gem install nokogiri
#parser
require 'rubygems'
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.cnn.com/'))

doc.css('p').each do |para|
    puts para.inner_text
end