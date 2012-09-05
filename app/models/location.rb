class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude

  belongs_to :restaurant

  geocoded_by :address
  after_validation :geocode
end
