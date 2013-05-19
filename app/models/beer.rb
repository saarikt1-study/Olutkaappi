class Beer < ActiveRecord::Base
	attr_accessible :name, :beer_type, :alc, :brewery, :country, :img
	serialize :review_id_array

	validates :name, :beer_type, :alc, :brewery, :country, presence: true
	validates :name, uniqueness: true

	def self.search(search_cond)
		if search_cond
			results = nil
			search_cond_lower = search_cond.downcase
			search_conds = search_cond_lower.strip.split
			search_conds.each do |cond|
				if results == nil
					results = find(:all, :conditions => ['lower(name) LIKE :s OR lower(beer_type) LIKE :s OR lower(brewery) LIKE :s OR lower(country) LIKE :s', :s => "%#{cond}%"])
				else
					results = results | find(:all, :conditions => ['lower(name) LIKE :s OR lower(beer_type) LIKE :s OR lower(brewery) LIKE :s OR lower(country) LIKE :s', :s => "%#{cond}%"])
				end
			end
		#	find(:all, :conditions => ['lower(name) LIKE :s OR lower(beer_type) LIKE :s OR lower(brewery) LIKE :s OR lower(country) LIKE :s', :s => "%#{search_cond_lower}%"])
			results
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
