describe 'DockingStation' do
  it 'release the bike' do
    expect(bike_release('bike')).to eq 'Bike released'
  end
end
