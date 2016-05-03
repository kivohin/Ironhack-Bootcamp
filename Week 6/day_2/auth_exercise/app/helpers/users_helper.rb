module UsersHelper
	def user_name
		current_user ? current_user.username : "Ironhacker"
	end
end
