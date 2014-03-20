require 'spec_helper'
require 'item'

attr_reader = :name, :description, :image, :day

describe Item do
  it 'has a name' do
    item = Item.new("Channa Masala", "5.95", "Yummy goodness", "food1.jpg", "monday")

    expect(item.name).to eq "Channa Masala"
  end
  it 'has a price' do
    item = Item.new("Channa Masala", "5.95", "Yummy goodness", "food1.jpg", "monday")

    expect(item.price).to eq "5.95"
  end
  it 'has a description' do
    item = Item.new("Channa Masala", "5.95", "Yummy goodness", "food1.jpg", "monday" )

    expect(item.description).to eq "Yummy goodness"
  end
  it 'has an image' do
    item = Item.new("Channa Masala", "5.95", "Yummy goodness", "food1.jpg", "monday")

    expect(item.image).to eq "food1.jpg"
  end
  it 'knows that two items are the same if they have the same attributes' do
    item1 = Item.new("Channa Masala", "5.95", "Yummy goodness", "food1.jpg", "monday")
    item2 = Item.new("Channa Masala", "5.95", "Yummy goodness", "food1.jpg", "monday")

    expect(item1).to eq item2
  end

end


