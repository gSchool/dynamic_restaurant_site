require 'spec_helper'
require 'menu'

describe Menu do
  it "only displays menu items for Sunday" do
    menu = Menu.new(File.expand_path('../dynamic_restaurant_site/config/sample_menu.csv'))
    sun = Date.new(2014, 03, 16)
    expect(menu.items(sun)).to match_array [Item.new("Sunday,Cheeseburger", "0.49", "baby", "sample.jpg")]
  end
  it "only displays menu items for Friday" do
    menu = Menu.new(File.expand_path('../dynamic_restaurant_site/config/sample_menu.csv'))
    fri = Date.new(2014, 03, 14)
    expect(menu.items(fri)).to match_array [Item.new("Chicken", "1.00", "yum", "sample.jpg"),                                      ]
  end
end

