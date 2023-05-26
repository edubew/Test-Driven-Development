require 'rspec'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe '#new' do
    it 'returns a Solver object' do
      expect(@solver).to be_an_instance_of Solver
    end
  end

  describe '#factorial' do
    it 'returns the factorial of the number' do
      expect(@solver.factorial(4)).to eq(24)
    end

    it 'returns 1 if the factorial method argument is 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'raise an argument error' do
      expect { @solver.factorial(-1) }.to raise_error(ArgumentError, 'Input must be a positive number!')
    end
  end

  describe '#reverse' do
    it 'should reverse the word' do
      expect(@solver.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it 'It should return fizzbuzz' do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'should return fizz' do
      expect(@solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'should return buzz' do
      expect(@solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'should return the number as a string' do
      expect(@solver.fizzbuzz(7)).to eq('7')
    end
  end
end
