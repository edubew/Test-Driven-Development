require_relative 'solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context 'Test factorial behaviors' do
    it 'raises an ArgumentError when number is negaitve' do
      expect { @solver.factorial(-4) }.to raise_error(ArgumentError)
    end

    it 'return 1 when number is 0' do
      expect(@solver.factorial(0)).to eq 1
    end

    it 'test for positive integer' do
      expect(@solver.factorial(5)).to eq 120
    end
  end

  context 'Test for reverse word' do
    it 'expect the world to be reversed' do
      expect(@solver.reverse_word('shafiu')).to eq('uifahs')
    end
  end

  context 'Test for fizzbuzz' do
    it 'returns "fizz" when number divisible by 3' do
      expect(@solver.fizzbuzz(9)).to eq 'fizz'
    end

    it 'returns "buzz" when number is divisible by 5' do
      expect(@solver.fizzbuzz(20)).to eq 'buzz'
    end

    it 'returns "fizzbuzz" when N is divisible by both 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq 'fizzbuzz'
    end

    it 'returns a string when number is any other case' do
      expect(@solver.fizzbuzz(7)).to eq '7'
    end
  end
end
