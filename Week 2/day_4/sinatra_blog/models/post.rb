class Post
	attr_reader :title, :date, :content

	def initialize(title, date, content)
		@title = title
		@date = date
		@content = content
	end

	def angry_title
		@title.upcase + "!!!"
	end

end
