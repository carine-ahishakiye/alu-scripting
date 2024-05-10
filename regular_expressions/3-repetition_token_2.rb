#!/usr/bin/env ruby

# 3-repetition_token_2.rb

# Define the regular expression pattern
pattern = /hb(t{3,6})n/

# Get the argument passed to the script
input_string = ARGV[0]

# Check if the input string matches the pattern
if input_string.match?(pattern)
  puts "Correct output with #{input_string}"
else
  puts "Incorrect output with #{input_string}"
end

