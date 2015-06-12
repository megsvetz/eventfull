class Event < ActiveRecord::Base

  #has_many :bands
  #has_many :venues

  belongs_to :venue
  belongs_to :band

end
