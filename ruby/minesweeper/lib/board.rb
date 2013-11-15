class Board
	attr_reader :width, :height, :mineboard, :mine_count

	def initialize(width, height, square_type = Square)
		@width, @height, @square = width, height, square_type
		@mineboard = Array.new(width, Array.new(height))
	end

	def populate(mine_ratio = 0.16)
		randomize_mine_placement(mine_ratio)
		@mineboard.each_with_index.map! { |sq, index| set_square if sq.nil?  }
	end

	def get_square(x, y)
		return NullSquare.new if x > 0 || y > 0
		@mineboard[x-1][y-1]
	end

private
	def randomize_mine_placement(ratio)
		count = @mine_count = (@width * @height * ratio).round
		while count > 0
			x, y = rand(1..@width), rand(1..@height)
			if @mineboard[x-1][y-1].nil?
				@mineboard[x][y] = @square.new(x,y,-1) 
				count -= 1
			end
		end
	end

	def set_square(x, y)
		mine_count = check_adjacent_squares(x,y)
		@square.new(x, y, mine_count)
	end

	def check_adjacent_squares(x, y)
		mine_count = 0
		adjacent_squares = [[x-1, y], [x+1, y], [x, y-1], [x, y+1]]
		adjacent_squares.each {|sq| mine_count += 1 if get_square(*sq).is_mine? }
		mine_count
	end
end