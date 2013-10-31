#!/usr/bin/ruby

class Fizzbuzz
	attr_accessor :input

	def initialize(file)
		@input = []
		File.new(file).each_line do |line|
			@input.push( line.split(' ').map(&:to_i) )
		end
		@input
	end
	
	def play(lineNo=nil)
		return run_fizzbuzz(@input[lineNo-1]) if lineNo
		result = ""
		@input.each do |inputs|
			result << (run_fizzbuzz(inputs) << "\n")
		end
		result.chomp "\n"
	end

	def run_fizzbuzz(game_args)
		result = ""
		fizz_num, buzz_num, count_to = game_args
		for num in 1..count_to do
			output = ""
			output << "F"      if num % fizz_num == 0
			output << "B"      if num % buzz_num == 0
			output << num.to_s if output.empty?
			result << (output << " ")
		end
		result.strip
	end
end
