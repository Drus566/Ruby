##CSV Data

# p - print
#require 'csv'
#CSV.open('text.txt').each do |person|
#    p person
#end

#require 'csv'
#people = CSV.parse(File.read('text.txt'))
#puts people[0][0]
#puts people[1][0]
#puts people[2][0]

#require 'csv'
#p CSV.read("text.txt")

#select first matching element
#require 'csv'
#people = CSV.read('text.txt')
#laura = people.find { |person| person[0] =~ /Laura/ }
#puts laura

#select all matching elements
#require 'csv'
#people = CSV.read("text.txt")
#young_people = people.find_all do |p|
#    p[3].to_i.between?(20,40)
#end
#p young_people

##Saving Data Back to the CSV File

#require 'csv'
#people = CSV.read('text.txt')
#laura = people.find { |person| person[0] =~ /Laura/ }
#puts people
#laura[0] = "Lauren Smith"
#puts people

#CSV.open('text.txt', 'w') do |csv|
#    people.each do |person|
#        csv << person
#    end
#end

##PStore

#class Person 
#    attr_accessor :name, :job, :gender, :age
#end

#fred = Person.new
#fred.name = "Fred Bloggs"
#fred.age = 45

#laura = Person.new
#laura.name = "Laura Smith"
#laura.age = 23

#Write data in pstore
#require 'pstore'
#store = PStore.new("storagefile")
#store.transaction do
#    store[:people] ||= Array.new
#    store[:people] << fred
#    store[:people] << laura
#end

#Read data from pstore
#require 'pstore'
#store = PStore.new("storagefile")
#people = []
#store.transaction do 
#    people = store[:people]
#end

#people.each do |people|
#    puts people.name
#end

##YAML

# Load data in yaml format
#require 'yaml'

#class Person
#    attr_accessor :name, :age
#end

#fred = Person.new
#fred.name = "Fred Bloggs"
#fred.age = 45

#laura = Person.new
#laura.name = "Laura Smith"
#laura.age = 23
#test_data = [fred, laura]

#puts test_data.to_yaml

#Load data from yaml format
#require 'yaml'

#class Person
#    attr_accessor :name, :age
#end

#yaml_string = <<END_OF_DATA
#---
#- !ruby/object:Person
#  age: 45
#  name: Jimmy
#- !ruby/object:Person
#  age: 23
#  name: Laura Smith
#END_OF_DATA

#test_data = YAML.load(yaml_string)
#puts test_data[0].name
#puts test_data[1].name

##SQL Commands

#require 'sqlite3'
#puts 'It"s all okay!' if defined?(SQLite3::Database)

#CREATE TABLE people(
#    id integer primary key,
#    name varchar(50),
#    job varchar(50),
#    gender varchar(6),
#    age integer);

#INSERT INTO people (name, age, gender, job) VALUES ("Chris Scott", 25, Male, "Technician");
#INSERT INTO people VALUES ("Chris Scott", 25, "Male", "Technician");

#SELECT * FROM people;
#SELECT name FROM people;
#SELECT * FROM people WHERE id = 2
#SELECT * FROM people WHERE name = "Chris Scott"
#SELECT * FROM people WHERE age >= 20 AND age <= 40;
#SELECT * FROM people ORDER BY name DESC;
#SELECT * FROM poeple WHERE age >= 20 AND age <= 40 ORDER BY age ASC;
#SELECT * FROM people ORDER BY name DESC LIMIT 5;
#SELECT * FROM people ORDER BY age DESC LIMIT 1;

#DELETE FROM people WHERE name="Chris";
#DELETE FROM people WHERE age > 100;
#DELETE FROM people WHERE gender = "Male" AND age < 50;
#DELETE FROM people WHERE age > 100 LIMIT 10;

#UPDATE people SET name = "Christopher" WHERE name = "Chris";
#UPDATE people SET name = "Christopher", age = 44 WHERE name = "Chris";
#UPDATE people SET name = "Christopher" WHERE name = "Chris" AND age = 25;
#UPDATE people SET name = "Christopher";

## SQLite in Ruby

=begin
require 'sqlite3'
$db = SQLite3::Database.new("dbfile")
$db.results_as_hash = true

def disconnect_and_quit
    $db.close
    puts "Bye!"
    exit
end

def create_table
    puts "Creating people table"
    $db.execute %q{
        CREATE TABLE people(
            id integer primary key,
            name varchar(50),
            job varchar(50),
            gender varchar(6),
            age integer)
    }
end

def add_person
    puts "Enter name:"
    name = gets.chomp
    puts "Enter job:"
    job = gets.chomp
    puts "Enter gender:"
    gender = gets.chomp
    puts "Enter age:"
    age = gets.chomp
    $db.execute("INSERT INTO people (name, job, gender, age) VALUES (?, ?, ?, ?)",name,job,gender,age)
end

def find_person
    puts "Enter name or ID of person to find:"
    id = gets.chomp

    person = $db.execute("SELECT * FROM people WHERE name = ? OR id = ?", id, id.to_i).first

    unless person
        puts "No result found"
        return 
    end

    puts %Q{
        Name: #{person['name']}
        Job: #{person['job']}
        Gender: #{person['gender']}
        Age: #{person['age']}
    }
end

#Program database
loop do
    puts %q{Please select an option:
    
    1. Create people table
    2. Add a person 
    3. Look for a person
    4. Quit}

    case gets.chomp
    when '1'
        create_table
    when '2'
        add_person
    when '3'
        find_person
    when '4'
        disconnect_and_quit
    end
end

=end

##Sequel

=begin

require 'sequel'
require 'pg'

DB = Sequel.connect('postgres://user:password@locahost/dbname')

DB.create_table :people do
    primary_key :id
    String :first_name
    String :last_name
    Integer :age
end

people = DB[:people]
people.insert( :first_name => "Fred", :last_name => "Bloggs", :age => 32)

puts "There are #{people.count} people in the database"

people.each do |person|
    puts person[:first_name]
end

DB.fetch("SELECT * FROM people") do |row|
    puts row[:first_name]
end     

=end

##Active Record

#person = Person.where(name: "Chris").first
#person.age = 50
#person.save 