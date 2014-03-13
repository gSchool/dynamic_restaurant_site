require 'spec_helper'
require 'item'

describe Item do
  before do
    @item = Item.new("Channa Masala", 5.95, "Yummy goodness", "picture")
  end

  it "has a name" do
    expect(@item.name).to eq "Channa Masala"
  end

  it "has a price" do
    expect(@item.price).to eq 5.95
  end

  it "has a description" do
    expect(@item.description).to eq "Yummy goodness"
  end

  it "has an image name" do
    expect(@item.image_name).to eq "picture"
  end

  it 'knows that two items are the same if they have the same attributes' do
    item1 = Item.new("Channa Masala", 5.95, "Yummy goodness", "picture")
    item2 = Item.new("Channa Masala", 5.95, "Yummy goodness", "picture")

    expect(item1).to eq item2
  end

end