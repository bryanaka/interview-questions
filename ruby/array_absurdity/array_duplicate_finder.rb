class ArrayDuplicateFinder
	attr_reader :duplicate
	
	def initialize(length)
		@array = Array.new(length)
		@duplicate = nil
	end
	
	def length
		@array.length
	end

	alias_method :size, :length

	def careful_insert(*args)
		args.each do |val|
			@array[val].nil? ? (@array[val] = val) : (@duplicate = val; break;)
		end
		@duplicate
	end

end