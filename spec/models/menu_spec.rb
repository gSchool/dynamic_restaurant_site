require 'spec_helper'
require 'menu'

describe Menu do
  it "knows about the items" do
    menu = Menu.new

    expected = [Item.new("Channa Masala", 5.95, "Yummy goodness"),
                Item.new("Chicken Tikka Masala", 5.95, "Yummy goodness")]

    expect(menu.items).to eq expected
  end
  it "converts a CSV to array" do
    info = Menu.new

    actual = info.translate("test_menu.csv")

    expected =  [ ["name", "price", "description", "image"],
      ["Channa Masala", "5.95", "Yummy goodness", "food1.jpg"],
    ]

    expect(actual).to eq expected
  end
end