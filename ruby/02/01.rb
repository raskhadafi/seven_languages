#!/bin/bash ruby

# Day 2 Self-study

puts "Excercise 1"
###################
# Print the contents of an array of sixteen numbers,
# four numbers at a time, using just each.
numbers = (0..15).to_a
print = []

numbers.each do |number|
  print << number

  if print.length > 3
    puts print.inspect
    print = []
  end
end
