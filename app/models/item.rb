class Item < ActiveRecord::Base
	belongs_to :user
	belongs_to :location
	has_one :searchstatus
	after_initialize :init
	def init
      self.numofsearch  ||= 0          #will set the default value only if it's nil
    end

  attr_accessible :location_id, :author, :callnumber, :comments, :numofsearch, :title, :volume
end
