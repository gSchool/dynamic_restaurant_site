require 'spec_helper'

require 'menu'

describe Menu do
  it 'knows about the items' do
    file_path = File.expand_path('../../test_items.csv', __FILE__)
    menu = Menu.new(file_path)



    expect(menu.items).to match_array [
                                 Item.new("Channa Masala", 5.95, "Yummy goodness"),
                                 Item.new("Chicken Tikka Masala", 5.95, "Yummy goodness")
                             ]
  end
end