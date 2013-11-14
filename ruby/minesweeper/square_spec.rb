require 'rspec'
require File.expand_path '../square', __FILE__

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

		it 'can only happen once' do
			square.mark!
			expect(square.mark!).to raise_exception
		end
	end
	
	describe '#to_s changes when marked' do
		xit 'and is empty' do
		end

		xit 'and has has a number' do
		end
	end

	xit 'can be flagged' do
	end
end