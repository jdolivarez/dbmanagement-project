class Item < ActiveRecord::Base
  attr_accessible :author, :callnumber, :comments, :numofsearch, :title, :volume
end
