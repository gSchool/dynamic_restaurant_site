require 'spec_helper'

require 'item'

describe Item do
  it 'has a name' do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness")

    expect(item.name). eq "Channa Masala"
  end
end

