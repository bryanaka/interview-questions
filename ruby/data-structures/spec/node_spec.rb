require 'rspec'
require File.expand_path "../../lib/node", __FILE__

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