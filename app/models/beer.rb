class Beer < ActiveRecord::Base
	attr_accessible :name, :beer_type, :alc, :brewery, :country, :img

	validates :name, :beer_type, :alc, :brewery, :country, presence: true

	def self.search(search_cond)
		if search_cond
			find(:all, :conditions => ['name LIKE :s OR beer_type LIKE :s OR brewery LIKE :s OR country LIKE :s', :s => "%#{search_cond}%"])
		else
			find(:all)
		end
	end
end
