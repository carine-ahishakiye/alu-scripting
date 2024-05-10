#!/usr/bin/env ruby

# 1-repetition_token_0.rb

# Check if an argument is provided
if ARGV.empty?
  puts "Usage: ruby 1-repetition_token_0.rb <string>"
  exit(1)
end

# Get the argument from the command line
input_string = ARGV[0]

# Regular expression pattern to match the specified cases
pattern = /hbt{3,5}n/

# Match the input string against the pattern
if input_string.match?(pattern)
  puts "The input string '#{input_string}' matches the pattern '#{pattern}'."
else
  puts "The input string '#{input_string}' does not match the pattern '#{pattern}'."
end
