class Node
	attr_accessor :next, :data

	def initialize(data, next_node = nil)
		@data = data
		@next = next_node
	end

end