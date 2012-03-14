#!/bin/bash ruby

$points = 0

def get_number
  calculate_points(number, lower_or_higher)
  get_number
end

def calculate_points(guessing, direction, random_number = rand(10))
  switch direction
    case 1
      $points = $points + 1 if guessing < random_number
    case 2
      $points = $points + 1 if guessing > random_number
  end

  puts "Your current score is #{$points}."
  puts "---------------------------------"
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
  puts "Do you think your number is:"
  puts "1 for lower"
  puts "2 for higher"

  guess = gets.strip.to_i

  if guess > 0 && guess < 3
    guess
  else
    lower_or_higher
  end
end

puts "Welcome to the guessing game."
get_number
