##Dynamic code

#<eval> allow to execute code created dinamically
#evaluated - выражать в цифрах

#eval "puts 2 + 2"
#puts eval("2 + 2")

#my_number = 15
#my_code = %{#{my_number} * 2}
#puts eval(my_code)

##Bindings

#def binding_elsewhere
#    x = 20
#    return binding
#end

#remote_binding = binding_elsewhere
#x = 10
#eval("puts x")
#eval("puts x", remote_binding)

#Different context x variable

#eval("x = 10")
#eval("x = 50", remote_binding)
#eval("puts x")
#eval("puts x",remote_binding)

##Other Forms of eval
#Add Person class accessor dinamically with class_eval method!

=begin

class Person
end

#add new method for Class class defined within all class in program

class Class
  def add_accessor_to_person(accessor_name)
      self.class_eval %{
          attr_accessor :#{accessor_name}
      }
  end
end

person = Person.new
Person.add_accessor_to_person :name
Person.add_accessor_to_person :gender
person.name = "Peter Cooper"
person.gender = "male"
puts "#{person.name} is #{person.gender}"

#instance_eval
#execute for definition instance class

class MyClass
    def initialize
        @my_variable = 'Hello, world!'
    end
end

obj = MyClass.new
obj.instance_eval { puts @my_variable }

=end

##Creating Your Own Version of attr_accessor

=begin
class Person
    def name
        @name
    end
    def name=(name)
        @name = name
    end
end
#Alternatively
class Person
    attr_accessor :name
end
=end

=begin

#getter and setter methods dinamically
#implementing attr_accessor functional

class Class
    def add_accessor(accessor_name)
        self.class_eval %{
            def #{accessor_name}
                @#{accessor_name}
            end

            def #{accessor_name}=(value)
                @#{accessor_name} = value
            end
        }
    end
end

=end
