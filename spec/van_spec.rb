require_relative './spec_helper'

describe Van do 
  
  def fill_van van
    10.times { van.load(Bike.new) }
  end

  let(:van) { Van.new({capacity: 10})}
  let(:bike) { Bike.new }  
  let(:docking_station) { DockingStation.new }  

  it 'should be created with no bikes on it' do
    expect(van.bike_count).to eq 0
  end

  it 'should be able to load a bike' do
    van.load(bike)
    expect(van.bike_count).to eq 1
    station.release(bike)
    expect(station.bike_count).to eq 0
  end

  it 'should be able to unload a bike' do
    van.load(bike)
    van.unload(bike)
    expect(van.bike_count).to eq 0
  end

  it 'should know when it has reached capacity' do
    fill_van van
    expect(van.full?).to be true
  end

  it 'should not accept a bike if it\'s full' do
    fill_van van
    expect{van.load(bike)}.to raise_error 'Van is full'
  end
  
end