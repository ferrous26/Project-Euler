#!/usr/bin/env ruby
# Problem 22.rb --- names and numbers

names = IO.read('names.txt').split(',').map! { |name| name.gsub /"/, '' }.sort!

total = 0

names.each_with_index { |name, index|
  sum = 0
  name.each_char { |char| sum += char.ord - 64 }
  total += sum * (index + 1)
}

puts total
