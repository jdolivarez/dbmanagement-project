class Item < ActiveRecord::Base
	belongs_to :user
	belongs_to :location
	belongs_to :searchstatus
	after_initialize :init
	def init
      self.numofsearch ||= 0          #will set the default value only if it's nil
  
      self.searchstatus_id ||= 0         #will set the default value only if it's nil
    end
     

  attr_accessible :searchstatus_id, :location_id, :author, :callnumber, :comments, :numofsearch, :title, :volume
 
end
