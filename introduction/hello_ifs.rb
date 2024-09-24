#!/usr/bin/env ruby
require '../lib/utilities'

comment 'We have briefly seen "if" statements, and they are common'

arr = [1, 2, 3, 4]

arr.each do |val|
  if val.odd?
    puts val
  end
end

comment 'Ifs can be inline as well'

arr.each do |val|
  puts val if val.even?
end

note 'This is just for convienience'

comment 'Ifs can have a default statment called else'

arr << "I'm Jeff"

arr.each do |val|
  if val.class.name == 'Integer'
    puts "I am an Integer: #{val}"
  else
    puts "I am a String: #{val}"
  end
end

comment 'Ifs can also have OTHER conditional statements'

arr << Math

arr.each do |val|
  if val.class.name == 'Integer'
    puts "I am an Integer: #{val}"
  elsif val.class.name == 'Module'
    puts "I am a Module: #{val}"
  else
    puts "I am a String: #{val}"
  end
end

comment 'case/when is a similar control structure, that allows you to evaluate a
condition against many possible values'

arr.each do |val|
  case val.class.name
  when 'Integer'
    puts "I am an Integer: #{val}"
  when 'Module'
    puts "I am a Module: #{val}"
  else
    puts "I am a String: #{val}"
  end
end

comment 'Another conditional control structure is just called a conditinal statement'

arr.each do |val|
  puts val.class.name == 'String' ? "I'm not printing Strings" : val
end
