require 'rspec'
require File.expand_path '../cash_register', __FILE__

describe CashRegister do
	let(:register) { CashRegister.new }
	it '#monetize changes a float to an array of proper currency denominations' do
		expect(register.monetize(0.51)).to eq([0.50, 0.01])

	end

	it '#give_change' do
		pending
	end
end