#!/usr/bin/env ruby
# Problem 36 --- numbers below 1000000 that are palindromes in base 10 and 2

puts nums = (1...1_000_000).to_a.select { |x|
  x.to_s == x.to_s.reverse && x.to_s(2) == x.to_s(2).reverse
}.reduce(0, &:+)
