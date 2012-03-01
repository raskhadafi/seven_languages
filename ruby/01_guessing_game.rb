#!/bin/bash ruby

$points = 0

def get_number
  calculate_points(number, lower_or_higher)
  get_number
end

def calculate_points(guessing, direction, random_number = rand(10))
  
end

def number
  puts "Insert number from 0 to 9: "
  guessed_number = gets.strip.to_i
  
  if guessed_number > 10
    puts "too high number"
    number
  else
    guessed_number
  end
end

def lower_or_higher
  puts ""
end

puts "Welcome to the guessing game."
get_number
