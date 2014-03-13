require 'item'

class Menu
  def item
    [
       Item.new("Channa Masala", 5.95, "Yummy Goodness"),
       Item.new("Chicken Tikka Masala", 5.95, "Yummy Goodness")
     ]
  end
end