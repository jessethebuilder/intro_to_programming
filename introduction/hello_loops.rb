#!/usr/bin/env ruby
require '../lib/utilities'

comment 'We have seen loops with the #each method'

arr = [1, 2, 3]

arr.each { |n| puts n }

comment 'Ruby has a "for" loop for iterating each item in Array'

for val in arr do
  puts val
end

comment 'while is another kind of loop that goes until a condition is met'

count = 0

while count < arr.length
  puts arr[count]
  count += 1
end

comment 'Ruby also provides a similar until loop'

count = 0

until count == arr.length
  puts arr[count]
  count += 1
end

comment 'An iteration of a loop can be skipped with :next'

arr.each do |val|
  next if val == 2
  puts val
end

comment 'A loop can be broken out of with :break'

arr.each do |val|
  break if val == 2
  puts val
end

comment 'loop can just be called, if there is a conditional break'

count = 0

loop do
  puts arr[count]
  count = count += 1
  break if count == 2
end

comment 'Otherwise the loop just continues forever'

count = 0

# loop do
#   puts arr[count].inspect
#   count += 1
# end
