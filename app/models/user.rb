class User < ActiveRecord::Base
	attr_accessible :username, :password, :email
	validates :email, uniqueness: true
	validates :email, :password, presence: true
end
