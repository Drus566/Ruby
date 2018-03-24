## Basic Ruby Threads in action

# threads = []

# 10.times do 
#     thread = Thread.new do
#         10.times { |i| print i; $stdout.flush; sleep rand(2) }
#     end

#     threads << thread
# end

# threads.each {|thread| thread.join }

## Advanced Thread Operations

#Waiting for Threads to Finish Redux

# threads.each do |thread|
#     puts "\nThread #{thread.object_id} didn't finish in 1sec" unless thread.join(1)
# end

# Getting a list of all Threads

# 10.times { Thread.new { 10.times { |i| print "#{i}\n"; $stdout.flush; sleep rand(2) } } }
# Thread.list.each { |thread| thread.join unless thread == Thread.main }

# puts "This is all list your threads"

# Thread Operations from within threads themselves

# Thread.new do
#     10.times do |i|
#         print i
#         $stdout.flush
#         Thread.stop
#     end
# end

#Thread.list.each { |thread| thread.run }

#cooperative multitasking

# 2.times { Thread.new { 10.times { |i| print i; $stdout.flush; Thread.pass } } } 
# Thread.list.each { |thread| thread.join unless thread == Thread.main }
# puts "\n"


