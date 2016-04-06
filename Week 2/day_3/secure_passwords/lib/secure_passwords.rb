# Secure Password Program

class PasswordChecker
	def check_password(email, password)
		@email = email
		@password = password

		length_7 &&
		let_num_sym
	end

	def length_7
		if @password.length > 7
			true

		else
			false
		end
	end

	def let_num_sym
		!(@password =~ /([a-z][0-9])/i).nil? && !(@password =~ /([_+-.,!@#$%^&*();\/|<>"'])/).nil?
	end
end
