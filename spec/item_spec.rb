require 'spec_helper'
require 'item'

describe Item do
  it 'has name' do
    item = Item.new("Shalala", 5.95, "Tastes")

    expect(item.name).to eq ("Shalala")
  end
  it 'has price'do
  pending
  end

  it 'has description' do
  pending
  end
end