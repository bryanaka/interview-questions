require 'rspec'
require File.expand_path '../../lib/square', __FILE__

describe Square do
	let(:square) { Square.new(1,1,0) }

	it 'has cordinates X and Y' do
		expect(square.x).to eq(1)
		expect(square.y).to eq(1)
	end

	describe '#mark!' do
		it 'returns its contents' do
			expect(square.mark!).to eq(0)
		end

		it 'raises if marked twice' do
			square.mark!
			expect { square.mark!}.to raise_error
		end
	end

	describe '#flag!' do
		it 'can be flagged if not marked' do
			square.flag!
			expect(square.flagged?).to eq(true)
		end

		it 'cannot be flagged twice' do
			square.flag!
			expect { square.flag! }.to raise_error
		end	
		
		it 'cannot be flagged if marked' do
			square.mark!
			expect { square.flag! }.to raise_error
		end

	end

	describe '#unflag' do
	end
	
	describe '#to_s' do
		it 'isnt marked yet' do
			expect(square.to_s).to eq("□")
		end
		
		it 'is marked and is empty' do
			square.mark!
			expect(square.to_s).to eq(" ")
		end

		it 'is marked and has has a number' do
			number_square = Square.new(2,2,2)
			number_square.mark!
			expect(number_square.to_s).to eq("2")
		end

		it 'is marked and has a mine' do
			mine_square = Square.new(2,2,-1)
			mine_square.mark!
			expect(mine_square.to_s).to eq("X")
		end

		it 'is flagged' do

		end
	end

	
end