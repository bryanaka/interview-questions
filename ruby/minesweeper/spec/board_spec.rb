require 'rspec'
require File.expand_path '../../lib/board', __FILE__

describe Board do
	let(:board) { Board.new(9,9) }
	
	it 'has a width and height' do
		expect(board.height).to eq(9)
		expect(board.width).to eq(9)
	end

end