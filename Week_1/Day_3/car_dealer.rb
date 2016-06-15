require "pry"

class CarDealer
  def initialize(inventory)
    @inventory = inventory
  end


  def cars(brand)
binding.pry
    @inventory[brand.to_sym].each do |model|
      puts model
    end
  end

end


inventory = {
  :Toyota => ["Fiesta", "Mustang"],
  :Seat => ["Ibiza", "Leo"]
}

#try and find a way to create new car category
inventory[:Mini] = ("Cooper")

inventory[:Toyota].push("Cooper S")


puts inventory
# awesome_car_dealer = CarDealer.new(inventory)
# awesome_car_dealer.cars("Seat")
