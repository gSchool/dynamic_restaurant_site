require 'spec_helper'
require 'menu'

describe Menu do
  it 'knows about about the items' do
    menu = Menu.new
    expect(menu.items).to match_array [
                                Item.new("Channa Masala", 5.95, "Yummy goodness"),
                                Item.new("Chicken Tikka Masala", 5.95, "Yummy goodness")
                             ]
  end
end