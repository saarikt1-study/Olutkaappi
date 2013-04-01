class Beer < ActiveRecord::Base
	attr_accessible :name, :beer_type, :alc

	validates :name, :beer_type, :alc, presence: true
end
