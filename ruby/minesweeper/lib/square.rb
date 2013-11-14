class Square
	attr_accessor :x, :y, :contents
	attr_reader :marked, :flag

	class IllegalMove < Exception
	end

	def initialize(x, y, contents = 0)
		@x, @y, @contents = x, y, contents
		@marked = false
	end

	def mark
		raise Exception, "This square is already marked" if marked?
		@marked = true
		@contents
	end

	def flag
		raise Square::IllegalMove, "This square is marked, why are you trying to flag it?" if marked?
		raise Square::IllegalMove, "This square is already flagged" if flagged?
		@flag = true
		self
	end

	def unflag
		@flag = false if @flag == true
		self
	end
	
	alias_method :flag!, :flag
	alias_method :unflag!, :unflag
	alias_method :mark!, :mark

	def marked?
		@marked
	end
	
	def flagged?
		@flag
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