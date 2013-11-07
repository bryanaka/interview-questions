class Node
	attr_accessor :next, :data

	def initialize(data, nextNode = nil)
		@data = data
		@next = nextNode
	end

end

class LinkedList
	attr_accessor :head

	def initialize(head = nil)
		@head = head
	end
end
