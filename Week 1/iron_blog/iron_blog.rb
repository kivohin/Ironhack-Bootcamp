# Blog program

class Blog
	# attr_accessor :all_posts

	def initialize # (all_posts) don't use, because when creating object 'blog' we need to pass it 0 arguments, an empty blog!
		@all_posts = []
	end

	def add_post(post)
		@all_posts.push(post)
	end

	def add_sponsored_post(s_post)
		@all_posts.push
		
	end

	def publish_front_page
		@all_posts.sort! { |a,b| b.date <=> a.date }
		
		@all_posts.each do |item|
  		if item.sponsored == false
  			puts item.title
	  		puts item.date
	  		puts "*************"
	  		puts item.text
	  		puts "-------------"
	  		
  		else
  			puts "***** #{item.title} *****"
	  		puts item.date
	  		puts "*************"
	  		puts item.text
	  		puts "-------------"
  		end
  	end	
	end
end

class Post
attr_accessor :date, :title, :text, :sponsored

	def initialize (title, date, text, sponsored)
		@title = title
		@date = date
		@text = text
		@sponsored = sponsored
	end
end

blog = Blog.new()

firstPost = Post.new("First Post!", 1988, "This is the first entry, still poor :(", false)
secondPost = Post.new("Second Post!", 1997, "Still no ideas for this post.", true)
thirdPost = Post.new("Third Post!", 2016, "I'm a bad blogger.", false)

blog.add_post(firstPost)
blog.add_post(secondPost)
blog.add_post(thirdPost)

# puts firstPost.inspect

# puts blog.inspect

# puts blog.all_posts

blog.publish_front_page

