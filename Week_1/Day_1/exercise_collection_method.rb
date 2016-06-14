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
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

# puts homes[0].name
# puts homes[1].name
# puts homes[2].name
# puts homes[3].name
# puts homes[4].name

# for pos in 0..100
#   puts homes[pos].name
# end

homes.each do |home|
  puts "#{home.name} in #{home.city}"
  puts "Price: $#{home.price} a night\n "
end

# # cities = []
# homes.each do |hm|
#   cities.push(hm.city)
# end

cities = homes.map do |home|
  home.city
end

# Bad return
# bad = homes.map do |hm|
#   # puts returns nil
#   puts hm.name
# end

puts cities

prices = homes.map do |home|
  home.price
end

# puts prices

sum = prices.reduce do |sum, price|
  sum + price
end

average=sum/homes.length
puts average

# total_capacities = 0.0
#
# homes.each do |hm|
#   total_capacities = total_capacities + hm.capacity
# end
#
# puts "The average capacity is:"
# puts total_capacities / homes.length

total_capacities = homes.reduce(0.0) do |sum, hm|
  sum + hm.capacity
end

puts "The average capacity is:"
puts total_capacities / homes.length

home_with_index = homes.each_with_index do |home, index|
  puts "Home Number #{index + 1}: #{home.name}"
end

# keep homes in San Juan
# san_juan_homes = homes.select do |hm|
#   hm.city == "San Juan"
# end

# # Homes with capacity 4 or more
# high_capacity_homes = homes.select do |hm|
#   hm.capacity >= 4
# end

# home_41_dollars = homes.find do |hm|
#   # Is hm's price $41?
#   hm.price == 41
# end
# puts "The first home that costs $41 is:"
# puts home_41_dollars.name


# puts "1 <=> 3 is:"
# puts 1 <=> 3
# # -1
#
# puts "5 <=> 5 is:"
# puts 5 <=> 5
# # 0
#
# puts "7 <=> 4 is:"
# puts 7 <=> 4
# # 1

# sorted = homes.sort do |home1, home2|
#   # Compare the two homes by their capacity
#   home1.capacity <=> home2.capacity
# end

rng = 1..42
# # rng.each do |number|
# #   puts "The next number in the range is: #{number}"
# # end

# double = rng.map do |number|
#   number * 2
# end

# puts double

hellos = {
  :english => "Hello",
  :spanish => "Hola",
  :french => "Bonjour"
}

hellos.each do |language, word|
  puts "The word for Hello in #{language} is: #{word}."
end
