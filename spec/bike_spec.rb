require 'bike'

describe 'Bike' do
  it 'works?' do
    expect(Bike.new).to respond_to(:working?)
  end
end
