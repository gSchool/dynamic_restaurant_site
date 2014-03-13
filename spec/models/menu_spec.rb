require 'spec_helper'

require 'menu'

describe Menu do
  it "know about the menu items" do
    menu = Menu.new

    expect(menu.item).to match_array [
                                        Item.new("Channa Masala", 5.95, "Yummy"),
                                        Item.new("Chicken Tikka Masala", 5.95, "Yummy Googness")
                                      ]
  end
end