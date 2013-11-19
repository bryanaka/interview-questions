require "rspec"
require File.expand_path "../../lib/singly_linked_list", __FILE__

describe LinkedList do
	let(:list) { LinkedList.new(10) }

	it "uses Node class as the default Node type" do
		expect(list.head).to be_instance_of(Node)
	end

	it "points to nil on initialization if no node given" do
		expect(LinkedList.new.head).to be_nil
	end

	it "#length give length of the list" do
		expect(list.length).to eq(1)
		expect(LinkedList.new.length).to eq(0)
	end

	describe "#head" do
		it "points to first node given" do
			expect(list.head.data).to eq(10)
		end

	end

	describe "#[]" do
		it "can be used to access a certain element in the list" do
			list.insert(50)
			expect(list[1].data).to eq(10)
			expect(list[0].data).to eq(50)
		end

		it "can accept negative indexes in the same way Array does" do
			list.insert(50)
			list.insert(30)
			expect(list[-1].data).to eq(50)
			expect(list[-2].data).to eq(30)
		end
		
		it "returns nil if there is no head" do
			expect(LinkedList.new[0]).to be_nil
		end
		
		it "returns nil if trying to access a node that doesn't exist" do
			expect(list[190]).to be_nil
		end
	end

	describe "#insert" do
		it "can insert the node as the head" do
			list.insert(50)
			expect(list.head.data).to eq(50)
			expect(list.length).to eq(2)
		end

		it "can insert the node at index n" do
			list.insert(50, 1)
			expect(list.head.next.data).to eq(50)
			expect(list.length).to eq(2)
		end

		it "maintains correct length when inserting" do
			list.insert(50)
			list.insert(30)
			expect(list.length).to eq(3)
		end

	end

	describe "#remove" do
		let (:list5) do
			list5 = LinkedList.new(1)
			list5.insert(2)
			list5.insert(3)
			list5.insert(4)
			list5.insert(5)
			list5
		end

		it "removes the head by default" do
			list5.remove
			expect(list5.head.data).to eq(4)
		end

		it "returns the removed node" do
			removed_node = list5.remove
			expect(removed_node.data).to eq(5)
		end

		it "removes node at index n when given an index" do
			list5.remove(2)
			expect(list5.head.data).to eq(5)
			expect(list5.head.next.next.data).to eq(2)
		end

		it "maintains correct length when remove" do
			list5.remove(2)
			list5.remove
			expect(list5.length).to eq(3)
		end
	end

	describe "#find_val" do
	end

	describe "#middle_node" do
	end

end
