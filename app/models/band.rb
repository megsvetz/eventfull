class Band < ActiveRecord::Base

  #belongs_to :event

  has_many :events
  has_many :venues, through: :events

end
