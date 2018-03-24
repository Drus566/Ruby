## Getting Results From Other Program(Ruby scripts)

#Use system when aren't concerned with its output
#return true
#x = system("date")
#Whereas you should use '' or %x{} when you want the output of the remote program
#return output
#x = 'date'

##Transferring execution to another program and ceases main program

#exec "ruby another_script.rb"
#puts "This will never be displayed"

##Running Two Programms at the Same Time
#fork is not thread

#if fork.nil?
#   exec "ruby another_script.rb"
#end
#puts "This Ruby script now runs alongside another_script.rb"

#wait for all child processes to finish for continue

=begin
child = fork do
    sleep 3
    puts "Child says 'hi' !"
end

puts "Waiting for the child process.."
Process.wait child 
puts "All done!"
=end

##Interacting with another program

#ls = IO.popen("ls","r")
#while line = ls.gets
#   puts line
#end
#ls.close

#handle = IO.popen("other_program", "r+")
#handle.puts = "send input to other program"
#handle.close_write
#while line = handle.gets
#    puts line
#end

