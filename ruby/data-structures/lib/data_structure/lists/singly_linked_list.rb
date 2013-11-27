module DataStructure
	class LinkedList
		attr_accessor :head
		attr_reader :length
	
		def initialize(head_data = nil, node_class = Node)
			@node = node_class
			@length = 0
			if head_data
				@head = @node.new(head_data)
				@length += 1
			end
		end
	
		def [](index)
			return nil if @head.nil? || index > @length
			index = @length + index if index < 0
			current_node = @head
			index.times { current_node = current_node.next }
			current_node
		end
	
		def insert(data, index = 0)
			@length += 1
			return @head = @node.new(data, @head) if index == 0
			current_node = self[index-1]
			current_node.next = @node.new(data, current_node.next)
		end
	
		def remove(index = 0)
			@length -= 1
			current_node = @head
			if index <= 0
				@head = @head.next
				return current_node
			end
			index -= 2
			index.times { current_node = current_node.next }
			removed_node = current_node.next
			current_node.next = current_node.next.next
			removed_node
		end
	
	end
end
