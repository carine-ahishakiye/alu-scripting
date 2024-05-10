#!/usr/bin/env ruby

# 3-repetition_token_2.rb

# Define the regular expression pattern
pattern = /your_regular_expression_here/

# Get the argument passed to the script
input_string = ARGV[0]

# Check if the input string matches the pattern
if input_string.match?(pattern)
  puts "Input string matches the pattern!"
else
  puts "Input string does not match the pattern."
end

