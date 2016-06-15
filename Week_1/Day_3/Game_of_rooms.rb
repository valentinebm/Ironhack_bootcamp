require "pry"

class Game
  def initialize(room)
  @rooms = []
  @current_room = room
  end

  def add_room(room)
    @rooms.push(room)
  end

  def current_room
    puts @current_room
  end

  def rooms
     @rooms.each do |room|
       puts room.doors
     end
  end

  def start
    message
  end

  def message
    puts "Welcome to the game. Try and find the unicorns <3"
    puts "You are currently in #{@current_room.name}. In this room, there is #{@current_room.item}."
    puts "Where do you want to go next?"
    choice = gets.chomp
  # binding.pry
    while @current_room.errors.join.include? choice
      puts "Can't go there my friend. Take another direction"
      choice = gets.chomp
    end

      if @current_room.doors.join.include? choice
        move(choice)

      else
      puts "This is not a valid direction"
      choice = gets.chomp
    end
  end


  def move(choice)
    if choice == "S"
      @current_room.position[0]-=1
      puts @current_room.position
    end
    # if direction
    # end
  end
end

class Room
  attr_accessor :name, :position, :item, :doors, :errors
  def initialize(name, position, item, doors, errors)
      @name = name
      @position = position
      @item = item
      @doors = doors
      @errors = errors
  end
end

boring_room1 = Room.new("Boring room 1", [0,0], "nothing", ["E", "S"], ["W", "N"])

awesome_game = Game.new(boring_room1)

awesome_game.add_room Room.new("Christmas room",[0,1], "a Christmas three and lots of presents", ["W", "E", "S"], ["N"])
awesome_game.add_room Room.new("Death room 1", [0,2], "death", ["W", "E", "S"], ["N"])
awesome_game.add_room Room.new("Playa room 1", [0,3], "the beach, the sea and palm trees", ["W", "S"], ["N", "E"])
awesome_game.add_room Room.new("Death room 2", [1,0], "death", ["W", "N", "S"], ["E"])
awesome_game.add_room Room.new("Airplane room", [1,1], "an airplane", ["W", "E", "N", "S"], [])
awesome_game.add_room Room.new("Unicorn room", [1,2], "lots of unicorns", ["W", "E", "N", "S"], [])
awesome_game.add_room Room.new("Nap room", [1,3], "a huge bed", ["W", "N", "S"], ["E"])
awesome_game.add_room Room.new("Playa room 2", [2,0], "the beach, the sea and palm trees", ["E", "N"], ["E", "S"])
awesome_game.add_room Room.new("Boring room 2", [2,1], "nothing", ["W", "E", "N"], ["S"])
awesome_game.add_room Room.new("Fridge 2", [2,2], "huge fridge", ["W", "E", "N"], ["S"])
awesome_game.add_room Room.new("Reading room 2", [2,3], "a huge library", ["E", "N"], ["W","S"])

awesome_game.start
