#standart library
#!/usr/bin/ruby

# require 'cgi'

# cgi = CGI.new

# puts cgi.header
# puts "<html><body>This is a test</body></html>"

# -- using cgi more directly

# require 'cgi'
# cgi = CGI.new

# cgi.out do 
#     "<html><body>This is a test</body></html>"
# end

# ---- Accepting Passed Data

# require 'cgi'
# cgi = CGI.new

# from = cgi['from'].to_i
# to = cgi['to'].to_i

# number = rand(to-from + 1) +from

# puts cgi.header
# puts "<html><body>#{number}</body></html>"

# <form method="POST" action="/test.cgi">
# For a number between <input type="text" name="from" value="" /> and
# <input type="text" name="to" value="" /><input type="submit"
# value="Click here!" /></form>

# ---- Cookies

# require 'cgi'
# cgi = CGI.new

# cookie = cgi.cookies['count']
# #If there is no cookie, create a new one
# if cookie.empty?
#     count = 1
#     cookie = CGI::Cookie.new('count', count.to_s)
# else
#     #If there is a cookie, retrieve its value ( note that cookie.value results)
#     # in Array)
#     count = cookie.value.first

#     #Now send back an increased amount for the cookie to store
#     cookie.value = (count.to_i + 1).to_s
# end

# cgi.out("cookie" => [cookie]) do
#     "<html><body>You have loaded this page #{count} times</body></html>"
# end

# --------- Session

require 'cgi'
require 'cgi/session'
require 'cgi/session/pstore'

cgi = CGI.new
session = CGI::Session.new(cgi,
                           :session_key => 'count_app',
                           :database_manager => CGI::Session::PStore,
                           :prefix => 'session_id'
                           )
if session['count'] && session['count'].to_i > 0
    session['count'] = (session['count'].to_i + 1).to_s
else
    session['count'] = 1
end

cgi.out do
    "<html><body>You have loaded this page #{session['count'} times</body></html>"
end

session.close