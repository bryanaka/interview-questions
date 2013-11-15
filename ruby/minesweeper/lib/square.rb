class Square
	attr_accessor :x, :y, :contents
	attr_reader :marked, :flagged

	class IllegalMove < Exception
	end

	def initialize(x, y, contents = 0)
		@x, @y, @contents = x, y, contents
		@marked = false
	end

	def mark
		raise Exception, "This square is already been marked" if marked?
		@marked = true
		@contents
	end

	def flag
		raise Square::IllegalMove, "This square is marked, why are you trying to flag it?" if marked?
		raise Square::IllegalMove, "This square is already flagged" if flagged?
		@flagged = true
		self
	end

	def unflag
		@flagged = false if @flagged == true
		self
	end
	
	alias_method :mark!, :mark
	alias_method :flag!, :flag
	alias_method :unflag!, :unflag

	def marked?
		@marked
	end
	
	def flagged?
		@flagged
	end

	def is_mine?
		contents == -1
	end

	def to_s
		if marked?
			return " " if contents == 0
			is_mine? ? "X" : contents.to_s
		elsif flagged?
			return "⚐"
		else
			return "□"
		end
	end
end