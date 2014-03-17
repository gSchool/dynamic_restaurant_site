require 'spec_helper'
require 'menu'

describe Menu do
  it "knows about the items" do
    file_path = File.expand_path('../../../config/test_menu.csv', __FILE__)
    menu = Menu.new(file_path)

    expected = [
                Item.new("Channa Masala", "5.95", "Yummy goodness", "food1.jpg"),
                ]

    expect(menu.items).to eq expected
  end
end