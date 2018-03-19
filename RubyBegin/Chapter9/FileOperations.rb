#Depend on the OS / or \
#puts File.join("full","path","here","filename.txt")

#puts File.join(File::SEPARATOR, 'full', 'path', 'here', 'filename.txt')

#Path file in our own filesystem
#Puts File.expand_path("text.txt")

##Seeking

#f = File.open("text.txt", "r+")
#f.seek(-5, IO::SEEK_END)
#f.putc "X"
#f.close

#print every fifth character in a file
#f = File.open("text.txt", "r")
#while a = f.getc
#    puts a.chr
#    #every fifth...
#       f.seek(5, IO::SEEK_CUR)
#end

##Last Modified File

#t = File.mtime("text.txt")
#puts t.hour
#puts t.min
#puts t.sec

##Checking where a file exist

#if in folder exist file "file1.txt" then return True
#puts "It exists!" if File.exists?("file1.txt")

#Check at exists a opening file
#class MyFile 
#    attr_reader :handle
#
#   def initialize(filename)
#        if File.exists?(filename)
#            @handle = File.new(filename,"r")
#        else
#            return false
#        end
#    end
#end

#puts File.size("text.txt")

##How know the end of a file

#f = File.new("text.txt", "r")
#while !f.eof?
#    puts f.gets
#end
#f.close

##Directories

#Changing current looking directory..
#puts Dir.pwd
#Dir.chdir("/usr/bin")
#puts Dir.pwd

#get array files in direcotry
#puts Dir.entries("/usr/bin").join(' ')

#get array files(extremely pretty)
#Dir.foreach("/usr/bin") do |entry|
#    puts entry
#end

#get same (more concise way)
#puts Dir["/usr/bin/*"]

##Creating and Deleting  Directory

#Dir.mkdir("mynewdir")
#Dir.mkdir("/mynewdir")

#Methods Dir.unlink and Dir.rmdir performs the same action
#Dir.delete("mynewdir")

#require 'fileutils'
#Recursive deleting directories
#FileUtils.rm_f(directory_name)

##Temporary Directory

require 'tmpdir'
tempfilename = File.join(Dir.tmpdir, "myapp.dat")
puts tempfilename
tempfile = File.new(tempfilename, "w")
tempfile.puts "This is only temporary"
puts tempfile
tempfile.close
File.delete(tempfilename)

require 'tempfile'
f = Tempfile.new('myapp')
f.puts "Hello"
puts f.path
f.close
