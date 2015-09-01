require_relative './spec_helper'

# we're describing the functionality of the specific class, Bike
describe Bike do

  let(:bike) { Bike.new }

  it 'should not be broken after we create it' do
    expect(bike.broken?).to be false
  end

  it 'should be able to break' do
    bike.break

    expect(bike.broken?).to be true
  end

  it 'should be able to be fixed' do
    bike.break
    bike.fix
    expect(bike.broken?).to be false
  end


end