#!/usr/bin/env ruby
require '../lib/utilities'

comment 'String manipulation is every day in programming.'

string = 'Hello String'

puts string

comment 'Strings can be added together'

puts string + ", I'm Jeff"

comment 'Stirngs can be single or double quoted. '

puts 'I am a single-quoted string'
puts "I am a double quoted string"

comment 'Double quoted strings have special properties, such as string concatenation'

string = 'I am from a variable'

puts "Here is a string concatenated with a varaible: #{string}"
puts "Here is a string\nwith a line break in it."

comment 'You may want a double quote ina string requiring escapes or concatination. Ruby uses %Q|string|
to achive that. The | can be any braketing character, such as [{(. Use %q|| as an alterative
to single quotes.'

variable = 'concatenation'

puts %Q|I am a String with #{variable} and\na line break.|

comment %q|Ruby's String object has a lot of methods: https://ruby-doc.org/core-3.0.1/String.html|

puts "You can return the length of a String: #{variable.length}"
puts "You can capitalize a String: #{variable.upcase}"
puts "Or titlecase: #{variable.capitalize}"

comment 'You can return part of a string with a Range. A range specifies a start and end
to a seires of number, starting with 0. In this case, each character of a String.'

puts variable[0..2]

comment 'In a Range, the last charcter is at index -1 (and the one before that, -2...)'

puts variable[3..-1]
