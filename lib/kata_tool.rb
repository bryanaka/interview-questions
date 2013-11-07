# This is going to be a cli tool for generating templates
# and running tests for any given kata
#
# -d directory_name
# -f file_names, class_names
# 
#
#
#
require 'optparse'

def underscore(term)
	term.gsub!(/([A-Z\d]+)([A-Z][a-z])/,'\1_\2')
  term.gsub!(/([a-z\d])([A-Z])/,'\1_\2')
  term.tr!("-", "_")
  term.downcase!
  term
end

def camelize(term, uppercase_first_letter = true)
 	term
end

class KataTool
	attr_accessor :options
	attr_reader   :command

	@@command_map = {
		'generate' => 'generate',
		'g'        => 'generate',
		'test'     => 'test',
		't'        => 'test'
	}

	def initialize
		@command = @@command_map[ARGV[0]]
	end

	def run
	end

	def get_command

	end

	def parse_options
		defaults = {}
		parsed_opts = {}

		OptionParser.new do |opts|
			opts.on( "-l", "--lang [LANGUAGE]", String, "Language to use" ) do |l|
				parsed_opts[:language] = l
			end
		
			opts.on("-f", "--file [FILE_NAME]", String, "File Name") do |f|
				parsed_opts[:file_name] = f.underscore
				parsed_opts[:class_name] = f.camelize 
			end
		
			opts.on( "-d", "--dir [DIRECTORY_NAME]", String, "Directory Name" ) do |d|
				parsed_opts[:directory_name] = d
			end
		
			opts.on( "-t", "--test [TEST_FRAMEWORK]", String, "Test Framework") do |t|
				parsed_opts[:test] = t
			end
		
			opts.on( "-s", "--src", String, "Source Citation" ) do |s|
				parsed_opts[:src] = s
			end
		end.parse!

		@options = defaults.merge parsed_opts
	end
end