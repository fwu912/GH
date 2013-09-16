class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	#Setup accessible attributes for User model	
	# This locks up the db:migrate perhaps attr_accessible is already built in somewhere
	#attr_accessible :email, :password, :password_confirmation

	has_many :items

	
end
