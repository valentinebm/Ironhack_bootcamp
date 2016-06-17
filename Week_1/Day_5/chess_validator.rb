require "pry"

class Board
  attr_accessor :grid
  def initialize(grid)
    @grid = grid
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

  def horizontal
    @x
  end

  def vertical
    @y
  end

  def show(board)
    @board = board
    @position = @board[@x][@y]

      if @position == nil
        return false
      else
        return true
      end
  end

  def what(board)
    @board = board
    @board[@x][@y]
  end

end

class Piece
  def initialize
  end

  def check_move_validity(board, origin, destination)
    @board = board
    @origin = origin
    @destination = destination

    if moves(@origin, @destination) == true
      puts "Move is possible in that the pawn can theoretically perform that move"

    if all_empty(all_cell_betweens(@origin, @destination)) == true
      puts "Move is VALID!!!!"

    else
      puts "Move isn't valid - something in the way"
    end

    else
      puts "Pawn not able to perform that move"
    end
  end
end

class Rook < Piece
  def moves(origin, destination)
    @origin = origin
    @destination = destination

    if @origin.horizontal == @destination.horizontal || @origin.vertical == @destination.vertical
    return true
    end
  end

  # def initiation
  #   @board = board
  #   @origin = origin
  #   @destination = destination
  # #next lines verify whether there is actually something to be moved
  #   if @origin.show(@board) == false
  #     puts "Move can't be initiated"
  #   else
  #     puts @origin.what(@board)
  #   end
  # end

  def check_which_move(origin, destination)
    @origin = origin
    @destination = destination

    if @origin.horizontal == @destination.horizontal
      return "horizontal"

    elsif @origin.vertical == @destination.vertical
      return "vertical"
    end
  end

  def all_empty(array)
    @array = array
    results = []

    @array.each do |x,y|
      position = Position.new(x,y)
      result = position.show(@board)
      results.push(result)
      end

    if results.include? true
      answer = false
    else
      answer = true
    end
    answer
  end

def all_cell_betweens(origin, destination)
  @origin = origin
  @destination = destination
  @array = []

  if check_which_move(@origin,@destination).eql? "horizontal"
    for i in @origin.vertical+1...@destination.vertical
      cell = [@origin.horizontal, i]
      @array.push(cell)
    end

  elsif check_which_move(@origin,@destination).eql? "vertical"
      for i in @origin.horizontal+1...@destination.horizontal
        cell = [i, @origin.vertical]
        @array.push(cell)
      end
    end
    @array
  end

end

class Queen < Piece

  def moves(origin, destination)
    @origin = origin
    @destination = destination

    if @origin.horizontal == @destination.horizontal || @origin.vertical == @destination.vertical || diagonal(@origin, @destination)
    return true
    end
  end

  def diagonal(origin, destination)
    @origin = origin
    @destination = destination

    diff1 =  @origin.horizontal - @destination.horizontal
    diff1 =  @origin.vertical - @destination.vertical

    if diff1.abs == diff1.abs
      return true
    end
  end

  def check_which_move(origin, destination)
    @origin = origin
    @destination = destination

    if @origin.horizontal == @destination.horizontal
      return "horizontal"

    elsif @origin.vertical == @destination.vertical
      return "vertical"

    elsif diagonal(@origin, @destination) == true
      return "diagonal"
    end
  end

  def all_empty(array)
    @array = array
    results = []

    @array.each do |x,y|
      position = Position.new(x,y)
      result = position.show(@board)
      results.push(result)
      end

    if results.include? true
      answer = false
    else
      answer = true
    end
    answer
  end

def all_cell_betweens(origin, destination)
  @origin = origin
  @destination = destination
  @array = []

  if check_which_move(@origin,@destination).eql? "horizontal"
    for i in @origin.vertical+1...@destination.vertical
      cell = [@origin.horizontal, i]
      @array.push(cell)
    end

  elsif check_which_move(@origin,@destination).eql? "vertical"
      for i in @origin.horizontal+1...@destination.horizontal
        cell = [i, @origin.vertical]
        @array.push(cell)
      end

  elsif check_which_move(@origin, @destination).eql? "diagonal"
    horizontals = []
    verticals = []

    for i in @origin.horizontal+1...@destination.horizontal
      verticals.push(i)
    end

    for i in @origin.vertical+1...@destination.vertical
      horizontals.push(i)
    end
    @array = verticals.zip(horizontals)
    end
    @array
  end
end

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

a8 = Position.new(0,0)
h8 = Position.new(0,7)
d8 = Position.new(0,3)
a5 = Position.new(3,6)
# other_position = Position.new(0,1)

# my_board.show_occupation(first_position)
# my_board.show_occupation(other_position)
# starting_point.show_position

bR = Rook.new
bQ = Queen.new

# bR.check_move_validity(grid, a8, h8)
bQ.check_move_validity(grid, d8, a5)
