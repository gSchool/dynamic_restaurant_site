require 'spec_helper'
require 'menu'

describe Menu do
  it "only displays menu items for Monday" do
    menu = Menu.new(File.expand_path('../dynamic_restaurant_site/config/menu.csv'))
    thurs = Date.new(2014,03,13)
    expect(menu.items(thurs)).to match_array [Item.new("Channa Masala", "5.95", "Yummy goodness", "food1.jpg"),
                                            Item.new("Chicken Tikka Masala", "5.95", "Yummy goodness", "food2.jpg"),
                                            Item.new("Saag Paneer", "5.95", "Yummy goodness", "food3.jpg"),
                                            Item.new("Alu Gobi", "5.95", "Yummy goodness", "food4.jpg")]
  end
  it "only displays menu items for Thursday" do
    menu = Menu.new(File.expand_path('../dynamic_restaurant_site/config/menu.csv'))
    fri = Date.new(2014,03,14)
    expect(menu.items(fri)).to match_array [Item.new("Chicken Tikka Masala", "5.95", "Yummy goodness", "food2.jpg"),
                                            Item.new("Saag Paneer", "5.95", "Yummy goodness", "food3.jpg"),
                                            Item.new("Alu Gobi", "5.95", "Yummy goodness", "food4.jpg"),
                                            Item.new("Samsosa Chat", "5.95", "Yummy goodness", "food5.jpg")]
  end
end

