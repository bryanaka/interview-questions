require 'rspec'
require './singly_linked_list'

describe Node do
	let(:node) { Node.new(10) }

	it '#data accesses and sets the data within the current node' do
		node.data.should eq(10)
	end

	it '#next accesses and sets the next node in the list' do
		node.next.should be_nil
		node.next = Node.new(5)
		node.next.data.should eq(5) 
	end

end

describe LinkedList do
	let(:llist) { LinkedList.new(Node.new(10)) }

	describe '#head' do
		it 'points to nil on initialization if no node given' do
			LinkedList.new.head.should be_nil
		end

		it 'points to first node given' do
			llist.head.data.should eq(10)
		end

	end

	describe '#insert' do
	end

	describe '#remove' do
	end

	describe '#find_val' do
	end

end
