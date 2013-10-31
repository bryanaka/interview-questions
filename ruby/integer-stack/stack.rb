class Stack
	attr_reader :stack
	
	def initialize
		@stack = Array.new
	end

	def push(*args)
		stack.push(*args)
		self
	end

	def pop
		stack.pop
	end

	alias_method :push!, :push
	alias_method :pop!,  :pop

end

class DynamicStack
	attr_reader :stack, :size
	alias_method :length, :size

	class StackUnderflowError < Exception;end;

	def initialize(array_size=10)
		@size = array_size
		@stack = Array.new(array_size)
		@top = 0
	end

	def push(*args)
		args.each { |arg| add_to_stack(arg) }
		self
	end

	def pop
		@stack[@top] = nil
		@top -= 1
		check_underflow
		@stack[@top]
	end

	def empty?
		@top < 0
	end

	def full?
		@top == size
	end

private

	def resize
		@stack.concat Array.new(@size)
		@size *= 2
	end

	def add_to_stack(arg)
		@stack[@top] = arg
		@top += 1
		resize if full?
	end

	def check_underflow
		if empty?
			raise DynamicStack::StackUnderflowError, 'There are no more elements in the stack' 
			@top = 0
		end
	end

end