#!/usr/bin/env ruby
# This script matches only capital letters in the input string.
puts ARGV[0].scan(/[A-Z]/).join
