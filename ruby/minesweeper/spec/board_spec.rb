require './spec_helper'

describe Board do
	let(:board) { Board.new(9,9) }
	
	it 'has a width and height' do
		expect(board.height).to eq(9)
		expect(board.width).to eq(9)
	end

	it 'has a mineboard' do
		expect(board.mineboard).to eq(Array.new(9, Array.new(9)))
	end

	describe '#populate' do
		it 'can populate the board with mines' do
			board.populate!
			square = board[1][1]
			expect(square).to be_instance_of(Square)
		end
	end

	describe '#get_square' do
		before(:all) do
			board.populate!
		end

		xit '#get_square returns a square' do
			board.get_square(2,2).to be_instance_of()
		end

		xit '#get_square returns a NullSquare if asked for nonexistant square' do
			expect(board.get_square(-2,7)).to be_instance_of(NullSquare)
			expect(board.get_square(4,21)).to be_instance_of(NullSquare)
		end
	end

end