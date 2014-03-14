require 'item_translator'

describe ItemTranslator do
  it "converts a file to an array of information" do
    info = ItemTranslator.new

    actual = info.translate("test_menu.csv")

    expected =  [
                  "name", "price", "description", "image",
                  "Channa Masala", "5.95", "Yummy goodness", "food1.jpg",
    ]

    expect(actual).to eq expected
  end
end