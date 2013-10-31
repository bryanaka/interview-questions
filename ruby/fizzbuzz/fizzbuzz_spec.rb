require "rspec"
require "./fizzbuzz"

describe Fizzbuzz do
	let :fizzbuzz do
		Fizzbuzz.new('./fizzbuzz-input.txt')
	end

	let :formated_input do
		[[3,5,10], [2,7,15]]
	end

	let :result_output do
		result =  "1 2 F 4 B F 7 8 F B\n"
		result += "1 F 3 F 5 F B F 9 F 11 F 13 FB 15"
	end

	describe "#initialize" do
		it "reads in the file into and formats @input" do
			expect(fizzbuzz.input).to eq(formated_input)
		end

		context "given a bad file that" do
			it "doesn't exist" do
				expect { Fizzbuzz.new './doesnt-exist.txt' }.to raise_error
			end

			it "doesn't have numbers as a input" do
				pending
			end
			
			it "doesn't have all three parameters" do
				pending
			end

		end

	end

	describe "#play" do
		it 'takes all input and runs fizz buzz against it' do
			expect(fizzbuzz.play).to eq(result_output)
		end

	end

end