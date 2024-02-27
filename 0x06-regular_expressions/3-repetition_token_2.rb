#!/usr/bin/env ruby
# This script matches strings that start with 'h', followed by one or more 't's, and end with 'n'
puts ARGV[0].scan(/ht+n/).join
