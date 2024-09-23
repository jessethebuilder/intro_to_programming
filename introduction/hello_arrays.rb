#!/usr/bin/env ruby
require '../lib/utilities'

comment 'Arrays are a type of Object that holds a variable number of other, arbitrary Objects.'

array = [1, 'Jeff', Math]

puts array

comment 'Valules in an Array are accessed by 0-based index'

puts array[1]

comment 'Items can be added to Arrays'

array << 3.14159

puts array

comment 'Remember, << is just a method'

array.<<('Another Value')

puts array

comment 'Items can be deleted from an Array'

array.delete_at(1)

puts array

comment '#pop removes the last item in an array.'

array.pop

puts array

comment 'Arrays can be iterated with #each'

array.each { |item| puts "- #{item}"}

comment 'We can track our index with #each_with_index'

array.each_with_index { |item, index| puts "At #{index} -> #{item}"}

comment 'We can reverse an Array.'

array.reverse.each_with_index { |item, index| puts "At #{index} -> #{item}"}

comment 'Notice it does not reverse the index. This is because #reverse returns a new array.
It does not change the array variable.'

array.each_with_index { |item, index| puts "At #{index} -> #{item}"}

comment 'There is another shortcut for Arrays, when you do not have any spaces in your strings'

array = %w|string_one string_two|

puts array

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
