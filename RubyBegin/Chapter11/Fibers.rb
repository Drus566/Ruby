## A fiber in action

# sg = Fiber.new do
#     s = 0
#     loop do
#         square = s * s
#         Fiber.yield square
#         s += 1
#     end
# end

# 10.times { puts sg.resume }

# Passing data to a fiber

# sg = Fiber.new do
#     s = 0
#     loop do
#         square = s * s
#         s += 1
#         s = Fiber.yield(square) || s
#     end
# end

# In the first resume data nothing sending 

# puts sg.resume 
# puts sg.resume 24
# puts sg.resume
# puts sg.resume
# puts sg.resume 40
# puts sg.resume
# puts sg.resume
# puts sg.resume 0 
# puts sg.resume
# puts sg.resume