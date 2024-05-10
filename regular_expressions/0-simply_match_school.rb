#!/usr/bin/env ruby

# Check if the argument is provided
if ARGV.empty?
  puts "Usage: #{$0} <string>"
  exit 1
end

# Get the argument from the command line
string = ARGV[0]

# Define the regular expression pattern
pattern = /School/

# Scan the string for all occurrences of the pattern
matches = string.scan(pattern)

# Print all the matched occurrences
matches.each do |match|
  puts match
end
