require_relative './spec_helper'

describe Garage do
  
  let(:van) { Van.new({capacity: 10})}
  let(:bike) { Bike.new }  
  let(:garage) { Garage.new } 

  it 'should have zero bikes at creation' do
    expect(garage.bike_count).to eq 0
  end

  it 'should accept bikes into the garage' do
    garage.accept(bike)
    expect(garage.bike_count).to eq 1
  end

  it 'should take a bike from the van' do
    van.unload(bike)
    expect(van.bike_count).to eq 0
  end

  it 'should fix broken bikes' do
    garage.fix(bike)
    expect(bike.broken?).to eq false
  end

  it 'should remove fixed bikes' do
    garage.remove(bike)
    expect(garage.bike_count).to eq 0
  end

  it 'should load fixed bikes to the van' do
    van.load(bike)
    expect(van.bike_count).to eq 1
  end

end