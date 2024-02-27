#!/usr/bin/env ruby
# This script matches a pattern with one or more occurrences of 't'
puts ARGV[0].scan(/ht+n/).join
