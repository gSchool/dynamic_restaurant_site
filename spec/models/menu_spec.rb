require 'spec_helper'
require 'menu'


describe Menu do
  it "knows about the items" do
    menu = Menu.new
    expect(menu.items).to eq [
                               Item.new("Channa Masala", 5.95, "Yummy Goodness", "Picture"),
                               Item.new("Chicken Tikka Masala", 5.95, "Yummy Goodness", "Picture"),
                             ]
  end

end