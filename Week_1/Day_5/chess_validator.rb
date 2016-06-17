require "pry"

class Board
  attr_accessor :grid
  def initialize(grid)
    @grid = grid
  end

  def show_board
    puts @grid
  end

  def show_occupation(position)
    @horizontal = position.horizontal
    @vertical = position.vertical
    @position = @grid[@horizontal][@vertical]
    # binding.pry
      if @position == nil
        puts "There's nothing on this position."
      else
        puts "There's something here:"
        puts occupyer
      end
  end

  def occupyer
    @grid[@horizontal][@vertical]
  end

end

class Position
  def initialize(x, y)
    @x = x
    @y = y
  end

  def show_position
    puts "[#{@x}, #{@y}]"
  end

  def horizontal
    @x
  end

  def vertical
    @y
  end

end

class Piece
  def initialize(location, desired_location)
    @position = location
    @desired_location = desired_location
  end

  def check_move_validity(board, origin, destination)
    board = @grid
    origin = @position
    destination = @desired_location
  end
end

class Rook < Piece
  def initialize(location, desired_location)
    @position = location
    @desired_location = desired_location
  end

end

# a2 a3 LEGAL
# a2 a4 LEGAL
# a2 a4 ILLEGAL
# a7 a6 LEGAL
# a7 a5 LEGAL
# a7 a4 ILLEGAL
# b8 a6 LEGAL
# b8 c6 LEGAL
# b8 d7 ILLEGAL
# ...

grid =

  [ :bR, nil, nil, nil, nil, nil, nil, nil ],
  [ nil, nil, nil, nil, nil, nil, nil ,nil ],
  [ nil, nil, nil, nil, nil, nil, nil ,nil ],
  [ nil, nil, nil, nil, nil, nil, nil ,nil ],
  [ nil, nil, nil, nil, nil, nil, nil ,nil ],
  [ nil, nil, nil, nil, nil, nil, nil ,nil ],
  [ nil, nil, nil, nil, nil, nil, nil ,nil ],
  [ :wR, nil, nil, nil, nil, nil, nil, nil ]

my_board = Board.new(grid)

first_position = Position.new(0,0)
# other_position = Position.new(0,1)

my_board.show_occupation(first_position)
# my_board.show_occupation(other_position)
# starting_point.show_position

# bR = Rook.new(starting_point, [0,9])

# my_board.show_board
