#!/usr/bin/env ruby

puts '"variable" is a variable. Variables do not need to be provisioned with a keyword in Ruby.'
puts 'They just cannot belong to another variable or method name.'

variable = 'Hello World'

puts variable

puts '#puts is a method. Methods can be called w/ or w/o parethesis.'

puts(variable)

puts 'Variables can be re-assigned'

variable = 'Jeff'

puts variable

puts 'Variables can hold many different types of variables.'

variable = 'Hello String'

puts "#{variable.class.name}: #{variable}"

variable = 838901347

puts "#{variable.class.name}: #{variable}"

variable = 3.14159

# Hello comment. We are going to jump ahead here, but why keep doing the same thing?
# A fundemental good practice of development is DRY (Don't repeat yourself). So let's
# make method to help us. Much more on this later.

def show(value)
  puts "#{value.class.name}: #{value}"
end

show(variable)

variable = true

# Remember, we can use the parenthesis or not. Optional.

show variable

variable = false

show(variable) # Comments can be on the smae line as code. I prefer to use parenthesis.

puts 'Variables can be Objects as well. Do not worry about what an Object is yet.'

variable = Array

show(variable)

puts 'A Varialbe can be nil. Nil means nothing.'

variable = nil

show(variable)
