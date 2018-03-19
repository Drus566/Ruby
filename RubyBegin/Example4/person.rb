#This class stores information about people
class Person
    attr_accessor :name, :age, :gender

#Create the person object and store their name
    def initialize(name)
        @name = name
        raise ArgumentError, "No name present" if name.empty?
    end

#Print this Person's name to the screen
    def print_name
        puts "Person called #{@name}"
    end
end

begin 
    10/ 0
rescue => e
    puts "you caused an error"
    puts e.class
end