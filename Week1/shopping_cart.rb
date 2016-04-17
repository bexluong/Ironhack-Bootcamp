
class ShoppingCart
  def initialize
    @total_cart_items = []
    @item = item
    @price = price
  end

  def add_item_to_cart
    @total_cart_items << item
  end
end


cart = ShoppingCart.new

cart.add_item_to_cart :apple
cart.add_item_to_cart :banana
cart.add_item_to_cart :banana

cart.show
1 apple: 10$
2 bananas: 40$

cart.cost = 50
