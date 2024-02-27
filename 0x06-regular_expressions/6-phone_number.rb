#!/usr/bin/env ruby
# This script matches a string that consists of exactly 10 digits,
# representing a phone number.
puts ARGV[0].scan(/^\d{10}$/).join
