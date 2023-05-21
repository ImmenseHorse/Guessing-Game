#!/usr/bin/env ruby

puts "----------------------"
puts "| Ruby Guessing Game |"
puts "----------------------"

puts "What's your name?"
print '> '
name = gets.chomp

puts "Hello, #{name}."

puts 'We are going to play a guessing game.'
puts 'I will choose a random number between 1 and 10'
puts 'and you will have three chances to guess it.'


num = rand(10) + 1

puts 'Okay, I have my number.'

MAX_GUESSES = 3

1.upto(MAX_GUESSES) do |i|
 print "Guess #{i}: "
 g = gets.chomp
 if g.to_i == num
  puts "Great guess, #{name}!"
  puts "My number was #{num}."
  break
 else
  puts "Sorry, that wasn't it."
  if i == MAX_GUESSES
   puts "\nThat was your last guess."
   puts "My number was #{num}."
  end
 end
end

puts "\n"*2

print 'Goodbye!'