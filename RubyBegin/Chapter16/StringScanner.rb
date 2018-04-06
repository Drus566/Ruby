#standart lib
require 'strscan'

string = StringScanner.new "This is a test"
# puts string.scan(/\w+/)
# puts string.scan(/\s+/)
# puts string.scan(/\w+/)
# puts string.scan(/\s+/)
# puts string.rest

#-----------------------

# puts string.scan(/\w+/)
# puts string.scan(/\w+/)
# puts string.scan(/\w+/)
# puts string.scan(/\w+/)

#--------------------------

# puts string.scan(/\w+\s*/)
# puts string.scan(/\w+\s*/)
# puts string.scan(/\w+\s*/)
# puts string.scan(/\w+\s*/)

string = StringScanner.new "I want to live to be 100 years old!"
# puts string.scan(/\w+/)
# puts string.scan_until(/\d+/)

#------------------------------------

# puts string.scan_until(/\w+/)
# puts string.scan_until(/\w+/)
# puts string.scan_until(/\w+/)
# puts string.scan_until(/\w+/)

#-------------------------

# puts string.scan(/\w+/)
# string.unscan
# puts string.scan_until(/\d+/)
# string.unscan
# puts string.scan_until(/live/)

#----------------------------

string.scan(/\w+/)
string.unscan
puts string.pos
string.scan_until(/\d+/)
puts string.pos
string.unscan 
string.scan_until(/live/)
puts string.pos
string.pos = 12
puts string.pos

# '<<' concatenetes onto end the string