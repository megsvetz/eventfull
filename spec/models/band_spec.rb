require 'rails_helper'

RSpec.describe Band, :type => :model do

  before(:each) do
    @band1 = Band.create(name: 'Blink 182')
    @band2 = Band.create(name: 'Green Day')
  end

  it 'how many bands?' do
    expect(Band.all.count).to eq(2);
  end

end
