require 'rspec'
require './array_duplicate_finder'

describe ArrayDuplicateFinder do
	let(:test_array5)  { ArrayDuplicateFinder.new(5)  }
	let(:test_array20) { ArrayDuplicateFinder.new(20) }
	let(:inserts_5)    { [0,1,2,3,0] }
	let(:inserts_20)   { [0,1,10,3,2,4,5,7,6,8,11,9,15,12,13,4,16,18,17,14] }

	it 'initializes with a given length' do
		expect(test_array5.length).to  eq(5)
		expect(test_array20.length).to eq(20)
	end

	describe '#careful_insert will insert all values until there is a duplicate' do
		it 'returns nil when the insert is not duplicate' do
			expect( test_array5.careful_insert(3) ).to be_nil
			expect( test_array20.careful_insert(15,12,11,4,6) ).to be_nil
		end

		it 'returns the duplicate as soon as it is trying to be inserted' do
			expect( test_array5.careful_insert(*inserts_5) ).to eq(0)
			expect( test_array20.careful_insert(*inserts_20) ).to eq(4)
		end
	end
end
