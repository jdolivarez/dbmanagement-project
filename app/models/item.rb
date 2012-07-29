class Item < ActiveRecord::Base
	belongs_to :user
	has_one :location
	has_one :searchstatus
  attr_accessible :author, :callnumber, :comments, :numofsearch, :title, :volume
end
