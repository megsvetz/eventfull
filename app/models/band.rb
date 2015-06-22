class Band < ActiveRecord::Base

  has_many :events
  has_many :venues, through: :events

  def band_says
    "#{self.name} is famous for saying: #{self.bio}."
  end
end
