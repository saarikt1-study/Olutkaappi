class Beer < ActiveRecord::Base
	attr_accessible :name, :beer_type, :alc, :brewery, :country, :img
	serialize :review_id_array

	validates :name, :beer_type, :alc, :brewery, :country, presence: true
	validates :name, uniqueness: true

	def self.search(search_cond)
		if search_cond
			search_cond_lower = search_cond.downcase
			find(:all, :conditions => ['lower(name) LIKE :s OR lower(beer_type) LIKE :s OR lower(brewery) LIKE :s OR lower(country) LIKE :s', :s => "%#{search_cond_lower}%"])
		else
			find(:all)
		end
	end

	def self.find_by_name(name)
		name_lower = name.downcase
		find_res = find(:all, :conditions => ['lower(name) LIKE ?', name_lower])
		if find_res.size == 1
			find_res[0]
		else
			nil
		end
	end
end
