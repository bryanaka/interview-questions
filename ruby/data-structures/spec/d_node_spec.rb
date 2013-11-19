require 'rspec'
require File.expand_path "../../lib/d_node", __FILE__

describe DNode do
	let(:node) { DNode.new(10) }

	it '#data accesses and sets the data within the current node' do
		node.data.should eq(10)
	end

	describe "#next" do
		it "accesses and sets the next node in the list" do
			expect(node.next).to be_nil
			node.next = DNode.new(5)
			expect(node.next.data).to eq(5)
		end

	end

	describe "#prev" do
		it "accesses and sets the previous node in the list" do
			expect(node.prev).to be_nil
			node.prev = DNode.new(5)
			expect(node.prev.data).to eq(5)
		end

	end

end