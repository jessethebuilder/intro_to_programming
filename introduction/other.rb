#!/usr/bin/env ruby
require '../lib/utilities'

comment 'Catching errors in Ruby'

begin
  this will fail
rescue
  puts 'Except I caught the error'
end

puts 'And exection continues'

comment 'We examine the error'

begin
  adfasdf
rescue => e
  puts e
end

puts 'And exection continues'

comment 'A begin block can include a rescue clause, which always fires'

begin
  adfasdf
rescue => e
  puts e
ensure
  puts 'This will fire no matter what. Useful for closing files and connections'
end

comment 'Different types of errors can be rescued'

begin
  comment('Too', 'Many' 'Arguments')
rescue ArgumentError => argument_error
  puts "Such as an ArgumentError: #{argument_error}"
end

comment 'You can raise your own errors'

begin
  raise 'Custom Error named Jeff'
rescue => e
  puts "I caught the custom error I raised: #{e}"
end

comment 'Throw/Catch is a similar structure to begin, rescuse, but it is just used
for control: not error catching'

catch(:did) do
  [1, 2, 3].each do |val|
    puts val
    throw :did if val = 2
  end

  puts 'I will never get called, unless val never == 2'
end

note 'You will probably never use this.'
