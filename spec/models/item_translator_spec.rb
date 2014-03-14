require 'item_translator'

describe ItemTranslator do
  it "converts a file to an array of hashes" do
    info = ItemTranslator.new

    actual = info.translate("test_menu.csv")

    expected =  [
                  {"ID" => 0, "Name" => "name", "Price" => "price",
                   "Description" => "description", "Image" => "image"},
                  {"ID" => 1, "Name" => "Channa Masala", "Price" => "5.95",
                   "Description" => "Yummy goodness", "Image" => "food1.jpg"}
                ]

    expect(actual).to eq expected
  end
end