#!/usr/bin/env ruby
require '../lib/utilities'

comment 'We do a lot of boolean algebra in programming. Evaluating truthiness is regular.'

puts true == true
puts true == false

comment 'Remember, everything is a method, including =='

puts true.==(true)

comment 'Expressions can also contain logical and/or operators'

puts true == true || false
puts true == true && false

comment 'Ruby has an xor argument'

puts true == true ^ true

comment 'Conditionals can be used for variable assignment. || picks first value.'

var = 'first' || 'second'

comment '&& picks second'

var = 'first' && 'second'

comment var

comment '|| picks second, if first value is false'

var = false || 'second'

puts var

comment 'A false in && is just false'

var = false && 'second'

puts var

comment 'In Ruby many things are truthy. These evaluate to true, though the do not == true'

puts "==: #{1 == true}"
puts "Integer: #{1 && true}"
puts "Even 0: #{0 && true}"
puts "String: #{'Jeff' && true}"
puts "Even a Class: #{Math && true}"

comment 'Nil evaluates to falsey'

puts "==: #{nil == false}"
puts "nil: #{!nil || !false}"

comment '! means not'

puts !true
