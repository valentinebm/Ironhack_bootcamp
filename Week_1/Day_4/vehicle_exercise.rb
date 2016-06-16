class Vehicle
  attr_accessor :wheels
  def initialize(wheels, noise)
    @wheels = wheels
    @noise = noise
  end

  def make_noise
    puts @noise
  end

end


class VehicleHandler
  def initialize(array)
    @array = array
  end

  def count_wheels
    total_wheels = @array.reduce(0) do |sum, vehicle|
    sum + vehicle.wheels
    end
  end

  def make_noises
    @array.each do |vehicle|
      vehicle.make_noise
    end
  end

end

car = Vehicle.new(4, "bbbrrrroooomm")

motorbike = Vehicle.new(2, "vrrrr")

bicycle = Vehicle.new(2, "tuut")

vehices_array= [car, motorbike, bicycle]

handler = VehicleHandler.new(vehices_array)

handler.make_noises

puts handler.count_wheels
