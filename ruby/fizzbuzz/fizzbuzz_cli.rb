#!/usr/bin/ruby
require './fizzbuzz'
require 'optparse'

default_opts = { :file_name => ARGV[0] }
options = {}

OptionParser.new do |opts|
	opts.on("-f", "--file [FILE_NAME]", String, "file name to read in") do |f|
		options[:file_name] = f
	end

	opts.on("-l", "--line [LINE NUMBER]", Integer, "Line number to run Fizzbuzz against") do |l|
		options[:line] = l
	end

end.parse!

options = default_opts.merge options
if options[:line]
	puts Fizzbuzz.new(options[:file_name]).play(options[:line])
else
	puts Fizzbuzz.new(options[:file_name]).play
end