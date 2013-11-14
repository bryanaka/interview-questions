require 'rspec'
require File.expand_path '../square', __FILE__

describe Square do
	let(:square) { Square.new(1,1,nil) }

	it 'has cordinates X and Y' do
		expect(square.x).to eq(1)
		expect(square.y).to eq(1)
	end
end