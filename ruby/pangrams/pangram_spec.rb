require 'rspec'
require './pangram.rb'

describe Pangram do
  let :mockfile do
    <<-EOF
      A quick brown fox jumps over the lazy dog
      A slow yellow fox crawls under the proactive dog
    EOF
  end
  let :testfile do
    "input.txt"
  end
  
  it "Returns a NULL when there is a pangram" do
    result = Pangram.evaluate("A quick brown fox jumps over the lazy dog")
    expect(result).to eq "NULL"
  end

  it "Returns a string of non-present letters when the string is not a pangram" do
    result = Pangram.evaluate("A slow yellow fox crawls under the proactive dog")
    expect(result).to eq "bjkmqz"
  end

  it "Returns the correct output to standard out given an input file" do
    result = Pangram.evaluate_file(testfile)
    expect(result).to eq "NULL\nbjkmqz\n"
  end
  
end
