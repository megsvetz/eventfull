class Event < ActiveRecord::Base

  #has_one :band
  #has_one :venue
  belongs_to :venue
  has_one :band

end
