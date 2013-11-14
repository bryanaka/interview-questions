class Square
	attr_accessor :x, :y, :contents
	attr_reader :marked

	def initialize(x, y, contents = 0)
		@x, @y, @contents = x, y, contents
		@marked = false
	end

	def mark!
		raise Exception, "This square is already marked" if marked?
		@marked = true
		@contents
	end
	alias_method :mark, :mark!

	def marked?
		@marked
	end

	def is_mine?
		contents == -1
	end

	def to_s
		if marked?
			return " " if contents == 0
			is_mine? ? "X" : contents.to_s
		else
			return "□"
		end
	end
end