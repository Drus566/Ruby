require 'nokogiri'
require 'open-uri'

# html = <<END_OF_HTML
# <html>
# <head>
# <title>This is page title</title>
# </head>

# <body>
# <h1>Big heading!</h1>
# <p>A paragraph of text.</p>
# <ul><li>Item 1 in a list</li><li>Item 2</li><li class = "highlighted">Item
# 3</li></ul>
# </body>
# </html>
# END_OF_HTML

# doc = Nokogiri::HTML(html)
# puts doc.css("h1").first.inner_html

#-------------------------------------

doc = Nokogiri::HTML(open('http://www.rubyinside.com/test.html'))
puts doc.css("h1").first.inner_html

list = doc.css('ul').first
list.css("li").each do |item|
    puts item.inner_html
end

list = doc.at('ul')
highlighted_item = list.at(".highlighted")
puts "-----------"
puts highlighted_item.inner_html
