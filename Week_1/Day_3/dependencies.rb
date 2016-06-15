module Payable
  def receive salary
    #code
  end
end

class Programmer < CaffeineConsumer
  include Payable
  #you can include many modules
end

#refactoring payroll exercise


#exercise dependecy injection:
class Car
  def initialize(engine)
    @engine = engine
  end

  def make_noise
    puts "Vrrrr "
    puts @engine.make_noise
  end

end

class Engine
  def initialize
  end

  def make_noise
    puts "Pshhhh"
  end

end

my_car = Car.new(Engine.new)

my_car.make_noise

#last exercise
