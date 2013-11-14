class Square
	attr_accessor :x, :y, :contents

	def initialize(x, y, contents = nil)
		@x, @y, @contents = x, y, contents
	end
end