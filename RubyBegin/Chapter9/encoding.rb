#File.new("text.txt", "r:utf-8").each { |line| puts line }

#p File.open("text.txt", "r:iso-8859-1").external_encoding
#p File.open("text.txt", "r").external_encoding

#transcoding
 
File.open("text.txt", "r:utf-8:iso-8859-1") do |f|
    p f.external_encoding
    first_line = f.gets
    p first_line.encoding
end