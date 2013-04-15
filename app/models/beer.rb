class Beer < ActiveRecord::Base
	attr_accessible :name, :beer_type, :alc, :brewery, :country, :img

	validates :name, :beer_type, :alc, :brewery, :country, presence: true

	def self.search(search_cond)
		if search_cond
			search_cond_lower = search_cond.downcase
			find(:all, :conditions => ['lower(name) LIKE :s OR lower(beer_type) LIKE :s OR lower(brewery) LIKE :s OR lower(country) LIKE :s', :s => "%#{search_cond_lower}%"])
		else
			find(:all)
		end
	end
end
