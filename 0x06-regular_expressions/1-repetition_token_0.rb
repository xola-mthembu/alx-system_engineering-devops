#!/usr/bin/env ruby
# This script uses a repetition token in regex to match patterns
puts ARGV[0].scan(/hbt{2,5}n/).join
