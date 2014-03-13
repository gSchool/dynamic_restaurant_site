require 'spec_helper'
require 'item'

describe Item do
  it "Item has a name" do
    item = Item.new("Channa Masala", 5.95, "Yummy Goodness")

    expect(item.name).to eq "Channa Masala"
  end

  it "Item has a price" do
    item = Item.new("Channa Masala", 5.95, "Yummy Goodness")

    expect(item.price).to eq 5.95
  end

  it "Item has a description" do
    item = Item.new("Channa Masala", 5.95, "Yummy Goodness")

    expect(item.description).to eq "Yummy Goodness"
  end
end