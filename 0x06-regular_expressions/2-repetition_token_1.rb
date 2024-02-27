#!/usr/bin/env ruby
# This script matches a pattern with zero or one occurrence of 'b'
puts ARGV[0].scan(/hb?tn/).join
