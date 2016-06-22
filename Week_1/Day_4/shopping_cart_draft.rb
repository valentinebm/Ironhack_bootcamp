require "pry"

class ShoppingCart
  def initialize(hash)
    @hash = hash
    @empty_cart = {}
    @final_cart = {}
  end

  def add_to_empty_cart
    @hash.each do |fruit, quantity|
    @empty_cart[fruit] = 0
    end
  end

  def add_to_final_cart
  end

  def show
    @final_cart.each do |fruit, quantity|
      puts "#{fruit}  #{quantity}"
    end
  end

  def cost
    @my_cart.reduce
  end

end
items = {
  :apple => 10,
  :orange => 5,
  :grape => 15,
  :banana => 20,
  :watermelon => 50
}

cart = ShoppingCart.new(items)

cart.add_to_empty_cart

cart.show

# cart.add_item_to_cart(items[0])
# cart.add_item_to_cart(items[:banana])
# cart.add_item_to_cart(items[:banana])



  # binding.pry
