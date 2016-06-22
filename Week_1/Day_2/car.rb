#require "pry"

class Car
 def initialize(sound)
  @sound =sound
  @visited_cities = []
 end

  def make_sound
    puts @sound
  end

  def self.model # with self you dont have to have an actual car to call the method
    puts "Masseratti"
  end

  def self.speed_control
    puts "What speed are you going at?"
    speed = gets.chomp.to_i
    if speed > 100 && speed <=120
      puts "too fast man, calm down"
    elsif speed > 120
      puts " way too fast, a ticket is coming..."

    end

  end


  def add_cities

    puts "have you visited new cities?"
    new_cities = gets.chomp

    while new_cities == "yes" do
        puts "which city?"
        city = gets.chomp
        @visited_cities.push (city)
        puts "have you visited new cities?"
        new_cities = gets.chomp
    end
  end

    # def cities (city)
    #   @visited_cities.push(city)
    # #  binding.pry
    # end
    # def print_cities
    #     IO.write ("doccities.txt", @visited_cities)
    #     IO.read ("doccities.txt")
    # end
    def visited (save = true)
        if save
          IO.write("#{self.object_id}.txt", @visited_cities)
        else
          puts "here are the cities i visited"
          @visited_cities.each do |item|
            puts "---> #{item}"
          end
        end
    end
end

class RacingCar < Car
  def make_sound # overwrites on top of the class. no matter what you put as sound it will always puts BROOOOOOOMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    puts "BROOOOOOOMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
  end
end

mini = Car.new ("BROOOOOOM")
jaguar = Car.new ("brooom")

mini.make_sound
jaguar.make_sound

Car.speed_control
# jaguar.add_cities
# jaguar.cities("Barcelona")
# jaguar.cities("Madrid")

racing_car = RacingCar.new ("bbbbb")
# racing_car.make_sound
#jaguar.print_cities
jaguar.visited
