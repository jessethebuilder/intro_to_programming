#!/usr/bin/env ruby
require '../lib/utilities'

comment 'Hello Math'

puts 1 + 1

comment 'Almost everything is a Method in Ruby, including math operators.'

puts 1.+(10)

comment 'Vairables hold values.'

val = 10

puts(val)

comment 'Values can change'

val = val + 30

puts val

comment '+= can be used to upate a value (-, /, and * have similar effects)'

val += 10

puts val

comment 'Ruby provides a module called Math: https://ruby-doc.org/core-2.6/Math.html'

val = 8383002
initial_val = val

val *= val

puts val

comment 'Math provides a ton of Math functions, like square root.'

puts Math.sqrt(val)

comment "Math's #sqrt function returns a float, instead of an ineger, but we can turn it into one."

root = Math.sqrt(val).to_int

puts root

comment 'We do not need to check that the value being generated are correct with our eyes. We use computers for that.'

puts root == initial_val

comment 'Ruby does not actually care if values are a Float or an Integer, as long as they evaluate to the same value.'

puts root == initial_val.to_f

comment 'There are limits to this in Ruby. A String representation of a Float/Int will not evaluate to true.'

puts root == initial_val.to_s
