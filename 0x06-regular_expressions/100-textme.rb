#!/usr/bin/env ruby
log_message = ARGV[0]

sender_regex = /\[from:(.+?)\]/
receiver_regex = /\[to:(.+?)\]/
flags_regex = /\[flags:(.+?)\]/

sender = log_message.match(sender_regex)[1]
receiver = log_message.match(receiver_regex)[1]
flags = log_message.match(flags_regex)[1]

puts "#{sender},#{receiver},#{flags}"
