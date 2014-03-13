require 'spec_helper'
require 'menu'

describe Menu do
  it "knows about the items" do
    menu = Menu.new

    expected = [Item.new("Channa Masala", 5.95, "Yummy goodness"),
                Item.new("Chicken Tikka Masala", 5.95, "Yummy goodness")]

    expect(menu.items).to eq expected
  end
end