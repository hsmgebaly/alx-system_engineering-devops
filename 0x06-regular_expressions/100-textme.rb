#!/usr/bin/env ruby
# This script examines log entries and gathers particular data.

# each line of the input line by line
ARGF.each do |line|
  # Using regular expressions, extract sender, receiver, and flags
  if line =~ /from:([^]]+).*to:([^]]+).*flags:([^]]+)/
    sender = $1
    receiver = $2
    flags = $3
    # format the information you output.
    puts "#{sender},#{receiver},#{flags}"
  end
end
