puts "hola"
puts 42.zero?
puts "thugs".include?("hugs")
puts 12344.size
name = "Valentine"

# concatenation vs interpolation
puts "Hello " + name + ", what\'s up?"
puts "Hello #{name}, what\'s up?"
add = 2 + 2
puts add
puts 7.5/2.to_f

puts "The variable name is a #{name.class}"


 def addSweet
  sweets = []
  puts "What sweet do you want?"
  answer = gets.chomp
  sweets.push(answer)
  puts "Do you want something else?"
  answer = gets.chomp
    if answer.downcase == "yes"
      puts "What do you want to add?"
    else puts "Ok, you\'re good to go then!"
    end
  #loop here?
  #puts "There you go. Now you have..."
 end
 # addSweet

 the_godfather_translations = {
   :english => "The Godfather",
   :spanish => "El padrino",
 }
 puts the_godfather_translations[:spanish]

name = "Valentine"
puts name

# puts "What's the name of your file?"
# filename = gets.chomp
# puts "What do you want to write in your file?"
# content = gets.chomp
# IO.write(filename+".rb", content)
#why is the following line not referring back to the file just created?
# puts IO.read(filename)

# fruits = [
#   "orange",
#   "banana",
#   "peach"
# ]
#
# fruits.each do |single_fruit|
#   puts single_fruit
# end

classmates = ["Lorenzo", "Niklas", "Tatjana"]

classmates.each do |name|
  puts "Good morning, #{name}"
end

# added_one = [1,2,3].map do |item|
#   item+1
# end
#
# added_two = added_one.map do |item|
#   item+1
# end
# puts added_two

cities = ["geneva", "barcelona", "taipei"]

cities_cap = cities.map do |city|
  city.capitalize
end

length = cities.reduce(0){|sum, city| sum + city.length}
average = length/cities.length
puts average

puts cities_cap

total = [2,4,10].reduce{|sum,x| sum - x}
puts total

#this is not the best way of doing it
i = 0
["a","b","c"].each do |x|
  puts "[#{i}] #{x}"
  i += 1
end

puts [5,2,3].select {|x| x.odd?}
puts [5,2,3].find {|x| x.odd?}

puts ["casa", "masa", "pepino"].grep(/as/)
