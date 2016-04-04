# Day 4

require 'pry'

class Login
	def initialize
		@hardcode_username = "kivohin"
		@hardcode_pass = "papaya"
		@username = ""
		@pass = ""
		@text = ""
	end	

	def ask_username
		puts "Give me your username!"
		@username = gets.chomp
		ask_pass
	end

	def ask_pass
		puts "And now your pass!"
		@pass = gets.chomp
		validate_username
	end

	def validate_username
		if @username == @hardcode_username
			puts "Correct user :)"
			validate_pass
		
		else
			puts "Incorrect username. Try again!"
			ask_username
		end
	end

	def validate_pass
		if @pass == @hardcode_pass
			puts "And correct pass!\nYou're now logged in!"
			input_text
		
		else
			puts "Incorrect pass. Try again!"
			ask_username
		end
	end

	def input_text
		puts "Now dear user write some text!"
		@text = gets.chomp
		count_words
	end

	def count_words
		array_total_count = @text.split(" ")
		total_words = array_total_count.length
		puts "Your text has #{total_words} word(s)!"
	end
end

init = Login.new
init.ask_username