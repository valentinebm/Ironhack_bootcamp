require "pry"

class ShoppingCart
  def initialize
    @items = []
    @totalprice = 0
  end

  def add_to_cart(item)
    @items.push(item)
  end

    def show
      counts = Hash.new(0)
      @items.each do |item|
        counts[item.name]+=1
      end
      counts.each do |item, quantity|
      puts "#{item.capitalize} :  #{quantity}"
      end

    end

    def price
      @items.each do |item|
        @totalprice += item.price
      end
      puts @totalprice
    end

end

class Fruit
  attr_accessor :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Apple < Fruit
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Orange < Fruit
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Grapes < Fruit
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Banana < Fruit
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Watermelon < Fruit
  def initialize(name, price)
    @name = name
    @price = price
  end
end

my_cart = ShoppingCart.new
my_cart.add_to_cart Apple.new("apple", 10)
my_cart.add_to_cart Banana.new("banana", 20)
my_cart.add_to_cart Banana.new("banana", 20)
my_cart.add_to_cart Banana.new("banana", 20)
my_cart.add_to_cart Orange.new("orange", 5)

my_cart.show
my_cart.price
