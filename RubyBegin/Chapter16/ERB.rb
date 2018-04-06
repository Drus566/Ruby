#standart library
# require 'erb'
# template = <<EOF
# <% 1.upto(5) do |i| %>
#     <p>This is iteration <%= i %></p>
# <% end %>
# EOF
# puts ERB.new(template).result
# ERB.new(template).run

# ------ Accessing outside Variables

# require 'erb'

# array_of_stuff = %w{this is a test}

# template = <<EOF
# <% array_of_stuff.each_with_index do |item, index| %>
#     <p>Item <%= index %>: <%= item %></p>
# <% end %>
# EOF

# puts ERB.new(template).result(binding)

# ------------ Safe

require 'erb'

template = <<EOF
Let's try to do something crazy like access the filesystem:
<%= 'ls' %>
EOF

puts ERB.new(template, 3).result #Using safe level 3!

