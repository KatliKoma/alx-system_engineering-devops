#!/usr/bin/env ruby
if ARGV.length > 0
  puts ARGV[0].scan(/hb+t+n/).join
else
  puts "Please provide an input string as an argument."
end
