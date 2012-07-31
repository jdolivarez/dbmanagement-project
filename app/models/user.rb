class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :email, :first_name, :last_name, :libraryid
	has_many :items
  # attr_accessible :email, :first_name, :last_name, :libraryid
  #validates :libraryid, :uniqueness => true
end
