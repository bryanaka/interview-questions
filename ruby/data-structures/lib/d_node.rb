require File.expand_path "../node", __FILE__

class DNode < Node
	attr_accessor :prev

	def initialize(data, next_node = nil, prev_node = nil)
		super(data, next_node)
		@prev = prev_node
	end

end