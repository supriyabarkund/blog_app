module SiteHelper
	def url_index
		"/"
	end

	def url_overview
		"/overview"
	end

	def url_floorplan
		"/floorplan"
	end

	def url_testimonial
		"/testimonial"
	end

	def url_blog
		"/blog"
	end

	def url_blog_detail(id)
		"/blog/#{id}"
	end
end
