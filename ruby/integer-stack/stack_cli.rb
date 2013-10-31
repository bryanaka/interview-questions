require './stack'

stack = DynamicStack.new(5)
file = File.open('./stack_input.txt').readlines
inputs = file.map { |input| input.split(' ') }

inputs.each do |input|
	stack.push(*input)
end

