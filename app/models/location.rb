class Location < ActiveRecord::Base
	belongs_to :item
  attr_accessible :location
end
