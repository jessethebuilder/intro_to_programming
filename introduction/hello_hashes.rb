#!/usr/bin/env ruby
require '../lib/utilities'

comment 'Hashes are another kind of Array organized by key, value.'

hash = {a: 'Hello', b: 'World'}

puts "#{hash[:a]} #{hash[:b]}"

comment ':a is called a Symbol. A Symbol is like a String, but it never changes, and are
often used as keys in Hashes'

comment 'Hashes can be interated'

hash.each do |key, value|
  puts "#{key} => #{value}"
end

comment 'Items can be added to hashes by assignin a new key'

hash[:c] = "It's me, Jeff"

puts "#{hash[:a]} #{hash[:b]}, #{hash[:c]}"

comment 'An unrecognized key returns nil'

puts hash[:x].inspect

comment 'We can examine the keys.'

puts hash.keys
puts hash.keys.class.name

comment 'Or the values'

puts hash.values
puts hash.values.class.name

comment 'Items can be deleted from a Hash. #delete returns the value at that key'

puts hash.delete(:b)

hash.each do |key, value|
  puts "#{key} => #{value}"
end
