class CashRegister
	@@cash_name = {
		0.01   => 'PENNY',
    0.05   => 'NICKEL',
    0.10   => 'DIME',
    0.25   => 'QUARTER',
    0.50   => 'HALF DOLLAR',
    1.00   => 'ONE',
    2.00   => 'TWO',
    5.00   => 'FIVE',
    10.00  => 'TEN',
    20.00  => 'TWENTY',
    50.00  => 'FIFTY',
    100.00 => 'ONE HUNDRED' 
  }

  @@cash_values = [
  	0.01,
		0.05,
		0.10,
		0.25,
		0.50,
		1.00,
		2.00,
		5.00,
		10.00,
		20.00,
		50.00,
		100.00
	]

	def monetize(money)
		money = Float(money)
		return @cash if money <= 0.0
		@cash ||= []
		denomination = @@cash_values.bsearch {|x| x >= money }
		index = @@cash_values.index(denomination)
		index = (index == 0 ? index : index - 1 )
		denomination = @@cash_values[index]
		@cash.push denomination
		monetize(money - denomination)
	end
end