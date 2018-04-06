#standart lib
#pretty print data
require 'pp'
person1 = { :name => "Peter", :gender => :male }
person2 = { :name => "Laura", :gender => :female }
people = [person1,person2,person1,person1,person1]
puts people.inspect
pp people

class TestClass
    def initialize(count)
        @@a = defined?(@@a) ? @@a + 1 : 0
        @c = @@a
        @d = [:a => {:b => count}, :c => :d] * count 
    end
end

#60 is wrapping width of 60 characters
pp TestClass.new(2), STDOUT, 60
pp TestClass.new(3), $>, 60
pp TestClass.new(4), $>, 60

