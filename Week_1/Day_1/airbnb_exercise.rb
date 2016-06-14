class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Marie's place", "Zürich", 3, 50),
  Home.new("Zoé's place'", "London", 2, 55),
  Home.new("Sophie's place", "Geneva", 5, 80),
  Home.new("Franzi's place", "Barcelona", 3, 40),
  Home.new("Elena's place", "Geneva", 1, 35),
  Home.new("Margot's place", "Hong Kong", 2, 60),
  Home.new("Peter's place", "Barcelona", 4, 50),
  Home.new("Rishav's place", "Kolkata", 7, 40),
  Home.new("Kate's place", "Zürich", 1, 30),
  Home.new("Bénédicte's place", "Geneva", 3, 50)
]

def array_printer(array)
  array.each do | home |
    puts "Home: #{home.name}, city: #{home.city}, capacity: #{home.capacity}, price: #{home.price}"
  end
end

def sorted_by_price_default(array) array.sort_by do |home|
  home.price
  end
end

def sorted_by_price_highest(array) array.sort_by do |home|
  -home.price
  end
end

homes_sorted_by_price_default = sorted_by_price_default(homes)
homes_sorted_by_price_highest = sorted_by_price_highest(homes)

def sorted_by_capacity_default(array) array.sort_by do |home|
  home.capacity
  end
end

def sorted_by_capacity_highest(array) array.sort_by do |home|
  -home.capacity
  end
end

homes_sorted_by_capacity_default = sorted_by_capacity_default(homes)
homes_sorted_by_capacity_highest = sorted_by_capacity_highest(homes)

# puts "How do you want to sort the homes, dear Valentine? Type 'price' or 'capacity'."
# choice = gets.chomp
#   if choice == "price"
#     puts "Do you want to see from lowest or from highest? Type 'lowest' or 'highest'"
#     order = gets.chomp
#     if order == "lowest"
#       array_printer(homes_sorted_by_price_default)
#     end
#     if order == "highest"
#       array_printer(homes_sorted_by_price_highest)
#     end
#   end
#   if choice == "capacity"
#     puts "Do you want to see from lowest or from highest? Type 'lowest' or 'highest'"
#     order = gets.chomp
#     if order == "lowest"
#       array_printer(homes_sorted_by_capacity_default)
#     elsif order == "highest"
#       array_printer(homes_sorted_by_capacity_highest)
#     end
#   end

# puts "In what city do you want to go? Type 'Zürich','London', 'Geneva', 'Barcelona', 'Hong Kong', 'Kolkata'"
# choice = gets.chomp
#
# relevant_homes = homes.select do |home|
#   home.city == choice
# end
#
# array_printer(relevant_homes)

prices = homes.map do |home|
  home.price
end

sum = prices.reduce do |sum, price|
  sum + price
end

average = sum/homes.length
puts average

puts "What's your budget my dear?"
budget = gets.chomp

# homes_within_budget = homes.select do |home|
#   home.price <= budget.to_i
# end

# array_printer(homes_within_budget)

home_within_budget = homes.find  do |home|
  home.price <= budget.to_i
end

puts "Here\'s a home that fits within your budget: #{home_within_budget.name} in #{home_within_budget.city}, with following capacity: #{home_within_budget.capacity} and price: #{home_within_budget.price}$ " 
