# Game of Rooms program

class Move
	#def initialize
	#	@N = 1
	#	@E = 1
	#	@S = 1
	#	@W = 1
	#end

	def move_north
		@position[0] + 1
	end

	def move_east
		@position[1] + 1
	end

	def move_south
		@position[0] - 1
	end

	def move_west
		@position[1] - 1
	end
end

class Space
	attr_accessor :description

	def initialize
		@space_commands = ["E", "S"]
		@description = "You are in magic room. There is a door to the east and south."
		@wrong_direction = "Auw! You hit your head :( There is no exit there."
		@wrong_command = "I don't understand, give me another command."
		@position = [0, 0]
	end

	def describe_room
		puts @description + "\n>"
		answer = gets.chomp.capitalize

		@space_commands.each do |command|
			if command == answer
				if answer == "N"
					move_north
				end

				if answer == "E"
					move_east
				end

				if answer == "S"
					move_south
				end

				if answer == "W"
					move_west
				end

				@array_spaces iterar
					y comparar posicion nueva con posicion en array, y cambiar a ese esapcion # move knowing the position move to new coordinate

			elsif answer == "N" || answer == "W"
				puts @wrong_direction
				describe_room

			else
				puts @wrong_command
				describe_room
			end
		end
	end
end

class Space1
	attr_accessor :description

	def initialize
		@space_commands = ["E", "S"]
		@description = "You are in magic room. There is a door to the east and south."
		@wrong_direction = "Auw! You hit your head :( There is no exit there."
		@wrong_command = "I don't understand, give me another command."
	end

	def describe_room
		puts @description + "\n>"
		answer = gets.chomp.capitalize

		@space_commands.each do |command|
			if command == answer
				volcano = Space2.new.describe_room

			elsif answer == "N" || answer == "W"
				puts @wrong_direction
				describe_room

			else
				puts @wrong_command
				describe_room
			end
		end
	end
end

class Space2
	attr_accessor :description

	def initialize
		@space_commands = ["W"]
		@description = "You are in a volcano. There is a magic door to the west."
		@wrong_direction = "Auw! You hit your head :( There is no exit there."
		@wrong_command = "I don't understand, give me another command."
	end

	def describe_room
		puts @description + "\n>"
		answer = gets.chomp.capitalize

		@space_commands.each do |command|
			if command == answer
				room = Space1.new.describe_room

			elsif answer == "N" || answer == "E" || answer == "S"
				puts @wrong_direction

			else
				puts @wrong_command
			end
		end
	end
end

class Character

end

space_1 = Space.new(["E", "S"],
	"You are in magic room. There is a door to the east and south."),
	"Auw! You hit your head :( There is no exit there.",
	"I don't understand, give me another command.",
	[0, 0])

space_2 = Space.new(["W"],
	"You are in a volcano. There is a magic door to the west.",
	"Auw! You hit your head :( There is no exit there.",
	"I don't understand, give me another command.",
	[0, 1])

MAKE ARRAY OF SPACES!!

# start_game = Space1.new.describe_room
