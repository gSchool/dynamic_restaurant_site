require 'spec_helper'
require 'item'

describe Item do
  it "has a name" do
    item = Item.new("Channa Masala", 5.95, "Yummy")

    expect(item.name).to eq "Channa Masala"
  end
  it "has a price" do
    item = Item.new("Channa Masala", 5.95, "Yummy")

    expect(item.price).to eq 5.95
  end
  it "has a description" do
    item = Item.new("Channa Masala", 5.95, "Yummy")

    expect(item.description).to eq "Yummy"
  end
  it "knows that two items are the same if they have the same attributes" do
    item1 = Item.new("Channa Masala", 5.95, "Yummy")
    item2 = Item.new("Channa Masala", 5.95, "Yummy")

    expect(item1).to eq item2
  end
end