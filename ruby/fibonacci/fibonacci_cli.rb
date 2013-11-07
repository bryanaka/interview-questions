#!/usr/bin/ruby
require File.expand_path '../fibonacci', __FILE__
require 'optparse'

default_opts = { :file => ARGV[0] }
options = {}

OptionParser.new do |opts|
	opts.on("-f", "--file [FILE_NAME]", String, "file name to read in") do |f|
		options[:file] = f
	end

end.parse!

options = default_opts.merge options

File.open(options[:file]).each_line do |line|
	puts Fibonacci.nth_number(line.to_i)
end