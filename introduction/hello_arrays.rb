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

comment 'Arrays can be turned into strings'

puts ['This', 'is', 'a', 'String from an Array'].join(' ')

comment 'And Strings can be made into arrays'

'Here is a String'.split(' ').each { |char| puts char }

comment 'Ruby Arrays have many useful methods, such as #sum to addup all of the values in an Array'

puts [1, 2, 3, 4, 5929, 28.883].sum
