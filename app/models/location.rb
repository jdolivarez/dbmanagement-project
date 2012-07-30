class Location < ActiveRecord::Base
  has_many :items
  attr_accessible :location
end
