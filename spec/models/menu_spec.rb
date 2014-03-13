require 'spec_helper'
require 'menu'
require 'import'


describe Menu do
  it "knows about the items" do
    menu = Menu.new
    expect(menu.items).to eq [
                               Item.new("Channa Masala", 5.95, "Yummy Goodness", "Picture"),
                               Item.new("Chicken Tikka Masala", 5.95, "Yummy Goodness", "Picture"),
                             ]
  end

  it "converts an Import into a menu full of items" do
    expect(Menu.new.create_menu("config/menu.csv")).to eq [
                                             Item.new("Channa Masala", "5.95", "Yummy goodness", "food1.jpg"),
                                             Item.new("Chicken Tikka Masala", "5.95", "Yummy goodness", "food2.jpg"),
                                             Item.new("Saag Paneer", "5.95", "Yummy goodness", "food3.jpg"),
                                             Item.new("Alu Gobi", "5.95", "Yummy goodness", "food4.jpg"),
                                           ]


  end

end