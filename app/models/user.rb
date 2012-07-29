class User < ActiveRecord::Base
	has_many :items
  attr_accessible :email, :first_name, :last_name, :libraryid
end
