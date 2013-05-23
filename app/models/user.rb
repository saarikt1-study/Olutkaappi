class User < ActiveRecord::Base
	attr_accessible :username, :password, :email, :terms
	validates :email, uniqueness: true
	validates :email, :password, presence: true
	validates_acceptance_of :terms
    include Gravtastic
    gravtastic :secure => true,
              :filetype => :gif,
              :size => 200
end
