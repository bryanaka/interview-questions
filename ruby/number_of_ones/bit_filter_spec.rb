require 'rspec'
require './bit_filter'

describe BitFilter do
	let(:bit_filter) { BitFilter.new }
	describe '#to_bit_array' do
		it 'converts a number to a bit array' do
			bits2 = bit_filter.to_bit_array(50)
			bits4 = bit_filter.to_bit_array(1579)

			expect(bits2).to eq([0, 0, 1, 1, 0, 0, 1, 0])
			expect(bits4).to eq([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1])
		end
	end

	describe '#count_zeros' do
		it 'returns the count of all the zeros in the bit representation' do
			zeros = bit_filter.count_zeros(1579)
			expect(zeros).to eq(42)
		end
	end

	describe '#count_ones' do
		it 'returns a count of all the ones and zeros' do
			ones = bit_filter.count_ones(50)

			expect(ones).to eq(3)
			expect(bit_filter.count_ones(10)).to eq(2)
			expect(bit_filter.count_ones(22)).to eq(3)
			expect(bit_filter.count_ones(56)).to eq(3)
		end
	end

end