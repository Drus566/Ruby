#standart lib
# require 'tempfile'

# f = Tempfile.new('myapp', '/my/secret/temporary/directory')
# f.puts "Hello"
# puts f.path 
# f.close
# f.open
# puts f.read
# f.close!

#--------------

# f.puts "Hello"
# f.pos = 0
# f.print "Y"
# f.pos = f.size - 1
# f.print "w"
# # f.flush 
# f.pos = 0
# puts f.read
# f.close!

#BY default, temporary files are opened in the w+ mode.

# -------------------

require 'tempfile'


# suing tempfile.open instead tempfile.new when using a block
#  when using block , than don't need close file 
Tempfile.open('myapp') do |f|
    f.puts "Hello" 
    f.pos = 0
    f.print "Y"
    f.pos = f.size - 1
    f.print "w"
    f.flush
    f.pos = 0
    puts f.read
end