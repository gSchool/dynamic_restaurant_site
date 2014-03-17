require 'spec_helper'
require 'menu'

describe Menu do
  it "only displays menu items for Wednesday" do
    menu = Menu.new(File.expand_path('../dynamic_restaurant_site/config/menu.csv'))
    wed = Date.new(2014,03,12)
    expect(menu.items(wed)).to match_array [Item.new("Saag Paneer", "5.95", "Yummy goodness", "food3.jpg")]
  end
  it "only displays menu items for Thursday" do
    menu = Menu.new(File.expand_path('../dynamic_restaurant_site/config/menu.csv'))
    thurs = Date.new(2014,03,13)
    expect(menu.items(thurs)).to match_array [Item.new("Alu Gobi", "5.95", "Yummy goodness", "food4.jpg")]
  end
end

