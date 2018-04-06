# Use for hash of passwords stored in database(standart library)
# require 'digest/sha1' 
# #or use   
# #require 'digest/md5'

# puts Digest::SHA1.hexdigest('password')
# puts Digest::SHA1.hexdigest('test' * 100)

# require 'digest/md5'
# puts Digest::MD5.hexdigest('test' * 1000)

# puts "Enter the password to use this program:"
# password = gets
# if Digest::SHA1.hexdigest(password) == '24b63c0840ec7e58e5ab50d0d4ca243d1729eb65'
#     puts "You've passed"
# else
#     puts "Wrong!"
#     exit
# end

# puts Digest::SHA1.digest('test' * 1000)

# Digest::SHA1.digest('test' * 1000).each_byte do |byte|
#     print byte, "-"
# end

# ---------- if want compress
require 'base64'
require 'digest/sha1'

puts Digest::SHA1.hexdigest('test')
puts "-------------------"
puts Base64.encode64(Digest::SHA1.digest('test'))