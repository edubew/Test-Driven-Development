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
    { @solver.factorial(-1) }.to raise_error(ArgumentError, 'Input must be a positive number!')
end
end