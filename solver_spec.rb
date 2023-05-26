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