class User < ActiveRecord::Base
	has_many :items
  attr_accessible :email, :first_name, :last_name, :libraryid
  validates :libraryid, :uniqueness => true
end
