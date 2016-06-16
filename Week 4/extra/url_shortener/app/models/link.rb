class Link < ActiveRecord::Base
	def self.search_original_link(s_l)
		link_id = Link.find_by(short_URL: s_l).id
    original_link = Link.find_by(id: link_id).original_URL
    return original_link
	end
end
