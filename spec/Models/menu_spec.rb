require 'spec_helper'

require 'menu'

require 'item'

describe Menu do

  it "Knows the menu array for item 1" do
    menu = Menu.new

    actual =  "Channa Masala, 5.95, Yummy goodness, food1.jpg, thursday"

    expected = menu.items_to_string(5)

    expect(actual).to eq expected
  end

  it "knows the menu array for item with day value of all" do
    menu = Menu.new

    actual =  "Chicken Tikka Masala, 5.95, Yummy goodness, food2.jpg, all"

    expected = menu.items_to_string(0)

    expect(actual).to eq expected
  end


end



