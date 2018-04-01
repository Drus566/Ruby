# require 'open-uri'

# # Donwnload file from an FTP server and saves its into a local file
# output = File.new('1.8.2-patch1.gz','wb')
# open('ftp://ftp.ruby-lang.org/pub/ruby/1.8/1.8.2-patch1.gz') do |f|
#     output.print f.read
# end
# output.close

## ----------- Connection and Basic FTP Actions

# require 'net/ftp'
# require 'uri'

# uri = URI.parse('ftp://ftp.ruby-lang.org/')

# print "#{uri.host}\n#{uri.port}\n"

# Net::FTP.open(uri.host) do |ftp|
#     ftp.login 'anonymous', 'me@privacy.net'
#     ftp.passive = true
#     ftp.list(uri.path) {|path| puts path}
# end

## ------------------ or any way ------------------

# require 'net/ftp'

# ftp = Net::FTP.new('ftp.ruby-lang.org')

# ftp.passive = true
# ftp.login

# ftp.list('*') {|file| puts file}
# ftp.close

# ## auth login
# # ftp.login(username,password)

# ## different directory
# # ftp.chdir('/pub/ruby')

# ## create directory
# # ftp.mkdir('test')

# ## delete , rename files
# # ftp.delete(filename)
# # ftp.rename(filename, new_name)

## ------------------Downloading files -----------------------

# require 'net/ftp'

# ftp = Net::FTP.new('ftp.ruby-lang.org')
# ftp.passive = true
# ftp.login
# ftp.chdir('/pub/ruby/1.8')
# ftp.getbinaryfile('1.8.2-patch1.gz')
# # ftp.getbinaryfile('ruby-1.8.7.tar.gz', 'local-filename', 102400) do |blk|
# # ... do something with blk here ...
# #     puts "A 100KB block of the file has been downaloaded"
# # end
# ftp.close

# # Downloading text or ASCII-based files uses the same technique as in the preceding code, but demands
# # using gettextfile instead. The only difference is that gettextfile doesn’t accept the third block size
# # parameter, and instead returns data to the code block line by line.

#----------------- Uploading files -----------
# require 'net/ftp'

# ftp = Net::FTP.new('ftp.domain.com')
# ftp.passive = true
# ftp.login
# ftp.chdir('/your/folder/name/here')

# # count = 0
# # ftp.putbinaryfile('local_file','local_file',100000) do |block|
# #     count += 100000
# #     puts "#{count} bytes uploaded"
# # end

# ftp.putbinaryfile('local_file')
# ftp.close

# --- tempfiles

require 'net/ftp'
require 'tempfile'

tempfile = Tempfile.new('test')

my_data = "This is some text data I want to upload via FTP."
tempfile.puts my_data

ftp = Net::FTP.new('ftp.domain.com')
ftp.passive = true
ftp.login
ftp.chdir('/your/folder/name/here')

ftp.puttextfile(tempfile.path, 'my_data')
ftp.close
tempfile.close