class Searchstatus < ActiveRecord::Base
	has_one :item
  attr_accessible :status
 
end
