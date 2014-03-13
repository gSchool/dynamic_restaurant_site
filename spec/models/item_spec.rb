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

  it "knows two iteams are the same if the have the same attributes" do
    item1 = Item.new("Channa Masala", 5.95, "Yummy Goodness")
    item2 = Item.new("Channa Masala", 5.95, "Yummy Goodness")

    expect(item1).to eq item2
  end
end