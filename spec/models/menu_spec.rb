require 'spec_helper'

describe Menu do
  it 'knows about the items' do
    menu = Menu.new

    expect(menu.create_menu(("config/menu.csv"))).to match_array [
      Item.new("Channa Masala", 5.95, "Yummy goodness", "food1"),
      Item.new("Chicken Tikka Masala", 5.95, "Yummy goodness", "food2"),
      Item.new("Saag Paneer",5.95,"Yummy goodness","food3"),
      Item.new("Alu Gobi",5.95,"Yummy goodness","food4")]
  end
end