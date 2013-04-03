class Beer < ActiveRecord::Base
	attr_accessible :name, :beer_type, :alc, :brewery, :country, :img

	validates :name, :beer_type, :alc, :brewery, :country, presence: true
end
