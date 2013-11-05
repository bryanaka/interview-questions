#!/Users/bmrobles/.rvm/rubies/ruby-2.0.0-p247/bin/ruby
require 'optparse'
require './array_duplicate_finder'

class Cli

	def initialize
		@options = {}
		defaults = {
			file: ARGV[0]
		}
		OptionParser.new do |opts|
			opts.banner =  "Usage: ./array_duplicate_finder.rb --file [FILE_NAME]" 
			opts.on("-f", "--file [FILENAME]", String, "path to the file name") do |f|
				@options[:file] = f
			end
		end.parse!
		@options = defaults.merge @options
	end

	def run
		File.open(@options[:file]).each_line do |line|
			elements = line.split ";"
			length = elements[0]
			entries = elements[1].split ","
			adr = ArrayDuplicateFinder.new(length.to_i)
			entries.map!(&:to_i)
			adr.careful_insert(*entries)
			p adr.duplicate
		end
	end

end

cli = Cli.new
cli.run
