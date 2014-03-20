require 'spec_helper'
require 'item'

describe Item do
  it 'has a name' do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness")
    expect(item.name).to eq "Channa Masala"
  end

  it 'has a price' do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness")
    expect(item.price(Date.new(2014, 03, 11))).to eq 5.95
  end

  it 'has a description' do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness")
    expect(item.description).to eq "Yummy goodness"
  end

  it 'has an image name' do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness", "food1.jpg")
    expect(item.image_name).to eq "food1.jpg"
  end

  it 'knows the two items are the same if they have the same attributes' do
    item1 = Item.new("Channa Masala", 5.95, "Yummy goodness")
    item2 = Item.new("Channa Masala", 5.95, "Yummy goodness")
    expect(item1).to eq item2
  end

  it "discounts the prices by 10% on Wendsdays" do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness", "food1.jpg")
    wed = Date.new(2014, 03, 12)
    expect(item.price(wed)).to eq("5.36")
  end
end