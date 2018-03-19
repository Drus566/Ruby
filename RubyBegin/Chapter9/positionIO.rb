#f = File.open("text.txt")
#puts f.pos
#puts f.gets
#puts f.pos

f = File.open("text.txt")
f.pos = 8
puts f.gets
puts f.pos
