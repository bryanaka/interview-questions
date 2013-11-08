require 'rspec'
require File.expand_path '../cash_register', __FILE__

describe CashRegister do
	let(:register) { CashRegister.new }
	it '#monetize changes a float to an array of proper currency denominations' do
		expect(register.monetize(0.51)).to   eq([0.50, 0.01])
		expect(register.monetize(0.6)).to    eq([0.5,0.1])
		expect(register.monetize(106.57)).to eq([100.0, 5.0, 1.0, 0.5, 0.05, 0.01, 0.01])
		expect(register.monetize(0)).to      eq([])
	end

	it '#give_change' do
		expect( register.give_change(15.94,16.00) ).to eq("NICKEL,PENNY")
    expect( register.give_change(17,16) ).to eq("ERROR")
    expect( register.give_change(35,35) ).to eq("ZERO")
    expect( register.give_change(45,50) ).to eq("FIVE")
	end
end