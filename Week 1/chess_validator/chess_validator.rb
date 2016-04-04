# Chess Validator program

# HEY LISTEN! You were last time working in finding index of an array!

require 'pry'

class ChessBoard
	attr_accessor :board

  def initialize
    @board = Array.new(8){Array.new(8)}
	end

  def populate_new_board
    (0...8).each do |row|
      (0...8).each do |cell|
        @board[row][cell]='--'
      end
    end
  end

 #  def create_piece(rook)
 #  	@rook = rook

 #  	board[0][7] = @rook
 #  	board[7][7] = @rook
	# end

	def check_status_destination(x, y)
		if @board[x][y] == "--"
			puts "Great! This cell is empty!"

		elsif @board[x][y]
			if @board[x][y].chr == "w"
				puts "STOP! There is a piece here at #{@board[x][y].}, it's a #{@board[x][y]}! Is this white piece your friend?"

			elsif @board[x][y].chr == "b"
				puts "STOP! There is a piece here, it's a #{@board[x][y]}! Is this black piece your friend?"
			end
		end
	end

	def check_status_path(x_o, y_o, x_d, y_d)
		if x_o == x_d && y_o > y_d # Check vertical movement up in board
			length_path = (y_o - y_d).abs

			while y_o <= y_d
				y_o -= 1
				check_status_destination(x_o, y_o)
			end
			

		elsif x_o == x_d && y_o < y_d # Check vertical movement down in board
			y_o += 1

		elsif x_o > x_d && y_o == y_d # Check horizontal movement left in board
			x_o -= 1

		elsif x_o < x_d && y_o == y_d # Check horizontal movement right in board
			x_o += 1

		elsif x_o > x_d && y_o > y_d # Check diagonal movement up left in board
			x_o -= 1
			y_o -= 1

		elsif x_o < x_d && y_o < y_d # Check diagonal movement down right in board
			x_o += 1
			y_o += 1

		elsif x_o < x_d && y_o > y_d # Check diagonal movement up right in board
			x_o += 1
			y_o += 1

		elsif x_o > x_d && y_o < y_d # Check diagonal movement down left in board
			x_o += 1
			y_o += 1	
		end
	end

 #  def movements
	#   @moves = IO.read("moves.txt").split(" \n ")
	#   puts @moves
	#   puts @moves.class
	# end

end

class Rook
	def initialize(rook)
  	@@board_grid = ChessBoard.new
  	@rook = rook
  end	

  def print_board
  	puts @@board_grid.inspect
  end

  def add_piece
  	@@board_grid.populate_new_board

  	@@board_grid.board[0][7] = @rook[:wR]
  	@@board_grid.board[7][7] = @rook[:wR]

  	@@board_grid.board[0][0] = @rook[:bR]
  	@@board_grid.board[7][0] = @rook[:bR]

  	# binding.pry
	end

	def move_valid(origin_x, origin_y, destination_x, destination_y)
		@origin_x = origin_x
		@origin_y = origin_y
  	@destination_x = destination_x
  	@destination_y = destination_y
		# binding.pry

		# I discovered something very IMPORTANT!
		# In next line of code, for applying the 'check_status_destination' method on the instance '@@board_grid' of 'ChessBoard' class, the correct way is as you see below! :D And not like this => @@instance.instance_variable.method. You do it directly on the instance!
		@@board_grid.check_status_destination(destination_x, destination_y)
		@@board_grid.check_status_path(origin_x, origin_y, destination_x, destination_y)
		# binding.pry
	end
end

# board_grid = ChessBoard.new()
# board_grid.populate_new_board
# puts board_grid.inspect

# puts board_grid.inspect

rook_all = Rook.new({ :wR => "wR", :bR => "bR" })


# binding.pry
rook_all.add_piece
# rook_all.print_board

rook_all.move_valid(0, 7, 0, 0)

# w_r = board_grid.create_piece({:wR => "White Rook"})
# b_r = board_grid.create_piece({:bR => [0, 0]})

# puts w_r

# board_grid.check_status_destination(7, 7)
