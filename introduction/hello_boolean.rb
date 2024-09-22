#!/usr/bin/env ruby

puts 'We do a lot of boolean algebra in programming. Evaluating truthiness is regular.'

puts true == true
puts true == false

puts 'Remember, everything is a method, including =='

puts true.==(true)

puts 'Expressions can also contain logical and/or operators'

puts true == true || false
puts true == true && false

puts 'Ruby has an xor argument'

puts true == true ^ true

puts 'Conditionals can be used for variable assignment. || picks first value.'

var = 'first' || 'second'

puts '&& picks second'

var = 'first' && 'second'

puts var

puts '|| picks second, if first value is false'

var = false || 'second'

puts var

puts 'A false in && is just false'

var = false && 'second'

puts var

puts 'In Ruby many things are truthy. These evaluate to true, though the do not == true'

puts "==: #{1 == true}"
puts "Integer: #{1 && true}"
puts "Even 0: #{0 && true}"
puts "String: #{'Jeff' && true}"
puts "Even a Class: #{Math && true}"

puts 'Nil evaluates to falsey'

puts "==: #{nil == false}"
puts "nil: #{!nil || !false}"

puts '! means not'

puts !true
