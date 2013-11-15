class NullSquare
	attr_accessor :x, :y, :contents
	attr_reader :marked, :flag

	def initialize(*args)
	end

	def mark
		raise Square::IllegalMove, "You must request valid cordinates of a square"
	end

	def flag
		raise Square::IllegalMove, "You must request valid cordinates of a square"
	end

	def unflag
		raise Square::IllegalMove, "You must request valid cordinates of a square"
	end
	
	alias_method :flag!, :flag
	alias_method :unflag!, :unflag
	alias_method :mark!, :mark

	def marked?
		false
	end
	
	def flagged?
		false
	end

	def is_mine?
		false
	end

	def to_s
		return ""
	end

end