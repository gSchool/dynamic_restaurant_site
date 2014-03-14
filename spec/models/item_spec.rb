require 'spec_helper'
require 'item'

describe Item do
  it 'has name, price, description, and image' do
    item = Item.new("Shalala", 5.95, "Tastes", "Blob.jpg")
    expect(item.name).to eq ("Shalala")
    expect(item.price).to eq (5.95)
    expect(item.description).to eq ("Tastes")
    expect(item.image).to eq ("Blob.jpg")
  end
  it 'knows that items are the same if they have the same attributes' do
    item1 = Item.new("Shalala", 5.95, "Tastes")
    item2 = Item.new("Shalala", 5.95, "Tastes")

    expect(item1).to eq (item2)
  end
end