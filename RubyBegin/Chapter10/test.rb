##Shebang

#!/usr/bin/env ruby

#puts "Your program works!"

##Environment Variable

=begin

puts RUBY_PLATFORM

if RUBY_PLATFORM =~ /win32/
    puts "We're in Windows"
elsif RUBY_PLATFORM =~ /linux/
    puts "We're in Linux"
elsif RUBY_PLATFORM =~ /darwin/
    puts "We're in OSX"
elsif RUBY_PLATFORM =~ /freebsd/
    puts "We're in FreeBSD"
else
    puts "We're running under an unknown OS"
end

=end

#info about Environment variables
#ENV.each {|e| puts e.join(': ')}

=begin

tmp_dir = '/tmp'
if ENV['OS'] =~ /Windows_NT/
    puts "This program is running under Windows NT/2000/XP!"
    tmp_dir = ENV['TMP']
elsif ENV['PATH'] =~ /\/usr/
    puts "This program has access to a UNIX-style file system"
else
    puts "I cannot figure out what environment I'm running in"
    exit
end

=end

#puts ENV.to_hash
