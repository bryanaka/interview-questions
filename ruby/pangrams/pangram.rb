class Pangram
	def self.evaluate(line)
		letterhash = {}
		Array('a'..'z').each {|letter| letterhash[letter] = 0 }
		line.downcase!
		line.each_char do |char|
				letterhash[char] += 1 if letterhash.has_key? char
		end
		s = ""
		letterhash.each { |char, value| s+= char if value == 0 }
		s.empty? ? "NULL" : s
	end
	
	def self.evaluate_file(path)
		output = ""
		File.open(path).each_line { |line| output += self.evaluate(line)+"\n" }
		output
	end
end

puts Pangram.evaluate_file("input.txt")
