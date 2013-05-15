class User < ActiveRecord::Base
	attr_accessible :username, :password, :email
	serialize :user_id_array, :review_id_array
end
