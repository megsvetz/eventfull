class Event < ActiveRecord::Base

  has_one :band
  has_one :venue

end
