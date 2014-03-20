require 'spec_helper'
require 'item'
require 'menu'

describe Menu do
  it 'knows about the items adds two more rows of items' do
    menu = Menu.new

    expect(menu.items).to match_array [
                                        Item.new("Channa Masala", "5.95", "Yummy goodness", "food1.jpg", "monday"),
                                        Item.new("Chicken Tikka Masala", "5.95", "Yummy goodness", "food2.jpg", "tuesday"),
                                        Item.new("Saag Paneer", "5.95", "Yummy goodness", "food3.jpg", "wednesday"),
                                        Item.new("Alu Gobi", "5.95", "Yummy goodness", "food4.jpg", "thursday"),
                                      ]
  end

end

