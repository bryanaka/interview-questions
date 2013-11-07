require 'rspec'
require './stack'

describe Stack do
	let(:sample_input) { "1 2 3 4\n10 -2 3 4" }
	let(:sample_output){ "4 2\n4 -2" }
	let(:test_stack)   { Stack.new }

	describe "#push" do
		it 'can push an integer' do
			test_stack.push 1
			expect(test_stack.stack).to eq([1])
		end

		it 'can push multiple integers' do
			test_stack.push 4,3,2,1
			expect( test_stack.stack ).to eq([4,3,2,1])
		end
	end

	describe "#pop" do
		let(:filled_stack) { Stack.new.push 4,3,5,6 }

		it 'can pop an integer, last in, first out fashion' do
			num = filled_stack.pop
			expect(num).to eq(6)
			expect(filled_stack.stack).to eq([4,3,5])
		end

	end

end

describe DynamicStack do
	let(:sample_input) { "1 2 3 4\n10 -2 3 4" }
	let(:sample_output){ "4 2\n4 -2" }
	let(:test_stack)   { DynamicStack.new }

	describe "#push" do
		it 'can push an integer' do
			test_stack.push 1
			expected = [1];
			9.times { expected << nil }
			expect(test_stack.stack).to eq(expected)
		end

		it 'can push multiple integers' do
			test_stack.push 4,3,2,1
			expected = [4,3,2,1]
			6.times { expected << nil }
			expect( test_stack.stack ).to eq(expected)
		end
	end

	describe "#pop" do
		let(:filled_stack) { DynamicStack.new.push 4,3,5,6 }

		it 'can pop an integer, last in, first out fashion' do
			num = filled_stack.pop
			expect(num).to eq(6)
			# expect(filled_stack.stack).to eq([4,3,5])
		end

		it 'raises an error if you pop too many times' do
			stack = DynamicStack.new
			stack.push 1
			stack.pop
			expect { stack.pop }.to raise_error
		end

	end

end