#!/usr/bin/env ruby
# This script matches a string that starts with 'h', ends with 'n',
# and has any single character in between.
puts ARGV[0].scan(/^h.n$/).join
