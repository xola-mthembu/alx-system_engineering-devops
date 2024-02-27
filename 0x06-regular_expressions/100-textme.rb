#!/usr/bin/env ruby
# This script extracts and outputs sender, receiver, and flags from a log entry.

log_entry = ARGV[0]

# Use regular expressions to capture relevant data from the log entry
sender = log_entry.scan(/\[from:(.+?)\]/).join
receiver = log_entry.scan(/\[to:(.+?)\]/).join
flags = log_entry.scan(/\[flags:(.+?)\]/).join

# Output the extracted information in the specified format
puts "#{sender},#{receiver},#{flags}"
