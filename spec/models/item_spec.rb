require 'spec_helper'
require 'item'

describe Item do
  it 'has name' do
    item = Item.new("Shalala", 5.95, "Tastes")

    expect(item.name).to eq ("Shalala")
  end
  it 'has price'do
    item = Item.new("Shalala", 5.95, "Tastes")

    expect(item.price).to eq (5.95)
  end

  it 'has description' do
    item = Item.new("Shalala", 5.95, "Tastes")

    expect(item.description).to eq ("Tastes")
  end

  it 'knows that items are the same if they have the same attributes' do
    item1 = Item.new("Shalala", 5.95, "Tastes")
    item2 = Item.new("Shalala", 5.95, "Tastes")

    expect(item1).to eq (item2)
  end
end