class Venue < ActiveRecord::Base

  #belongs_to :event

  has_many :events
  has_many :bands, through: :events

end
