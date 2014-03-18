require 'item'

class Menu
  def items
    [
      Item.new("Channa Masalla", 5.95, "Yummy goodness"),
      Item.new("Chicken Tikka Masalla", 5.95, "Yummy goodness")
    ]
  end
end