require 'rails_helper'

RSpec.describe Band, :type => :model do

  before(:each) do
    @band1 = Band.create(name: 'Blink 182', website: "http://www.facebook.com/blink182", bio: "We like to make Crappy Punk Rock")
    @band2 = Band.create(name: 'Green Day', website: "http://www.greenday.com", bio: "We like to sing and dance")
  end

  it 'how many bands?' do
    expect(Band.all.count).to eq(2);
  end

  it 'returns what bands have said' do
    expect(@band1.band_says).to eq("#{@band1.name} is famous for saying: #{@band1.bio}.")
  end

end
