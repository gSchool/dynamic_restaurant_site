require 'spec_helper'

require 'menu'

describe Menu do
  it "knows about the items" do
    menu = Menu.new

    expect(menu.items).to match_array [
                                 Item.new("Channa Masala", 5.95, "Yummy Goodness"),
                                 Item.new("Chicken Tikka Masala", 5.95, "Yummy Goodness"),
                             ]
  end
end
