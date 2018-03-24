##Tained Data and Objects
#Taint - bad dungerous data

#while x = gets
#   puts "=> #{eval(x)}"
#end

# x = "Hello, world!"
# puts x.tainted?

# y = [x, x ,x]
# puts y.tainted?

# z = 20 + 50
# puts z.tainted?

# a = File.open("another_script.rb").readlines.first
# puts a.tainted?

# b = [a]
# puts b.tainted?

# puts b.first.tainted?

#incredibly useless, as by default the accepted user data is considered tainted
# while x = gets
#     next if x.tainted?
#     puts "=> #{eval(x)}"
# end

# =~ compare if qual then return count qualed characters with regex
def code_is_safe?(code)
    code =~ /[`;*-]/ ? false : true
end

while x = gets
    x.untaint if code_is_safe?(x)
    next if x.tainted?
    puts "=> #{eval(x)}"
end

##Safe levels

#$SAFE variable reposible for safe level
# 0 (default)no restriction
# 1 Potentially unsafe methods can’t use tainted data. Also, the current directory is not
# added to Ruby’s search path for loading libraries.
# 2 The restrictions of safe level 1, plus Ruby won’t load any external program files
# from globally writable locations in the filesystem. This is to prevent attacks where
# hackers upload malicious code and manipulate existing programs to load them.
# Some potentially dangerous methods are also deactivated, such as File#chmod,
# Kernel#fork, and Process::setpriority .
# 3 The restrictions of level 2, plus newly created objects within the program are
# considered tainted automatically. You also cannot untaint objects.
