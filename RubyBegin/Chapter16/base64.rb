#encode 8 bit in 7 bit data such as plain text.
#standart library
# require 'base64'
# puts Base64.encode64('testing')

# puts Base64.encode64(File.read('/bin/bash'))

# ------------- converting to binary data

require 'base64'
puts Base64.decode64(Base64.encode64('testing'))

# -------------- using compression

require 'base64'
#standart library
require 'zlib'

module Base64 
    def Base64.new_encode64(data)
        encode64(Zlib::Deflate.deflate(data))
    end

    def Base64.new_decode64(data)
        Zlib::Inflate.inflate(decode64(data))
    end
end

test_data = 'this is a test' * 100

data  = Base64.encode64(test_data)
puts "The uncompressed data is #{data.length} bytes long in Base64"

data = Base64.new_encode64(test_data)
puts "The compressed data is #{data.length} bytes long in Base64"