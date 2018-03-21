##CGI Common gateway inteface

#or /usr/local/bin/ruby or /usr/bin/env ruby
#!/usr/bin/ruby

#puts "Content-type: text/html\n\n"
#puts "<html><body>This is a test</body></html>"

#if called this script as test.cgi and upload at web hosting
#visiting http://www.example.com/test.cgi return HTML page saying 'This is a test'

## CGI library

=begin 

require 'cgi'

cgi = CGI.new

puts cgi.header
puts "<html><body>This is a test</body></html>"

=end

##Accepting CGI Variables

=begin

require 'cgi'
cgi = CGI.new

text = cgi['text']

puts cgi.header
puts "<html><body>#{text.reverse}</body></html>"

#Use in web hosting http://www.example.com/test.cgi?text=this+is+a+test

=end

#one more example
#!/usr/bin/ruby

=begin

require 'cgi'
cgi = CGI.new

from = cgi['from'].to_i
to = cgi['to'].to_i

number = rand(to-from+1) + from

puts cgi.header
puts "<html><body>#{number}</body></html>"

#form for send data
<form method="POST" action="http://www.example.com/test.cgi">
For a number between <input type="text" name="from" value="" /> and
<input type="text" name="to" value="" /> <input type="submit"
value="Click here!" /></form>

=end