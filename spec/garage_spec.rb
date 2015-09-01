require_relative './spec_helper'

describe Garage do
  
  let(:van) { Van.new({capacity: 10})}
  let(:bike) { Bike.new }  
  let(:garage) { Garage.new } 

  it 'should have zero bikes at creation' do
    
    expect(garage.bike_count).to eq 0

  end

end