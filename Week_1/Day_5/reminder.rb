# ["a","b","c"].each_with_index do |x,i|
#   puts "[#{i}] #{x}"
# end
#
# puts [5,2,3].find {|x| x.odd?}
#
#
# puts [5,2,3].select {|x| x.odd?}

#COMPOSITION:

class Car
  @@counter = 0
  def initialize
    @engine = Engine.new
    @@counter += 1
  end

  def start
    @engine.move_pistons
  end

  def self.counter
    puts @@counter
  end

  def show_self
    puts self
  end
end

class Engine
  def move_pistons
    puts "Pshhh"
  end
end

car1 = Car.new
car2 = Car.new
car3 = Car.new

car1.show_self


Car.counter

#DEPENDENCY INJECTION:

# class Car
#   def initialize(engine)
#     @engine = engine
#   end
#
#   def start
#     @engine.move_pistons
#   end
# end
#
# class Engine
#   def initialize
#   end
#
#   def move_pistons
#     puts "Pshhh"
#   end
# end

module Greetable
  def hi
    puts "Hi"
  end
end

class Included
  include Greetable
end

class Extended
  extend Greetable
end

Included.new.hi

Extended.hi

my_obj = Object.new
my_obj.extend(Greetable)
my_obj.hi
