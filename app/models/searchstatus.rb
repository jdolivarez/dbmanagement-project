class Searchstatus < ActiveRecord::Base
	belongs_to :item
  attr_accessible :status
end
