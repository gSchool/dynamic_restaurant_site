require 'spec_helper'

describe Menu do
  it 'knows about the items' do
    menu = Menu.new

    expect(menu.items).to match_array [
                                        Item.new("Channa Masala", 5.95, "Yummy goodness", "food1"),
                                        Item.new("Chicken Tikka Masala", 5.95, "Yummy goodness", "food2")

                                      ]
  end
end