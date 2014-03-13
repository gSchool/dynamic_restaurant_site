require 'import'
class Menu

  def items
    [
      Item.new("Channa Masala", 5.95, "Yummy Goodness", "Picture"),
      Item.new("Chicken Tikka Masala", 5.95, "Yummy Goodness", "Picture"),
    ]

  end

  def create_menu(import)
    raw_array = Import.new.run(import)
    menu_array = []
    raw_array.shift
    raw_array.each do |item|
      menu_array << Item.new(item[0], item[1], item[2], item[3])
    end
    menu_array
  end
end