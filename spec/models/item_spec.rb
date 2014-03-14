require 'spec_helper'

require 'item'

describe Item do
  before do
    @item = Item.new("Channa Masala", "5.95", "Yummy goodness", "food1")
  end

  it 'has an name' do
    expect(@item.name).to eq "Channa Masala"
  end

  it 'has a price' do
    expect(@item.price).to eq "5.95"
  end

  it 'has a description' do
    expect(@item.description).to eq "Yummy goodness"
  end
end