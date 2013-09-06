module ApplicationHelper

	# help to return base title if one is not provided
	def full_title(page_title)
		base_title = "GeeHood"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
