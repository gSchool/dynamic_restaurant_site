require 'item'

class Menu
  def items
    [
      Item.new("Channa Masala", 5.95, "Yummy goodness", "food1"),
      Item.new("Chicken Tikka Masala", 5.95, "Yummy goodness", "food2")
    ]
  end
end