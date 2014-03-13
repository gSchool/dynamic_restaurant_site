require 'spec_helper'
require 'import'

describe Import do
  it "should import the csv into an array and separate by commas" do
    expect(Import.new.run('config/menu.csv')).to eq [
                                                      ["name", "price", "description", "image"],
                                                      ["Channa Masala", "5.95", "Yummy goodness", "food1.jpg"],
                                                      ["Chicken Tikka Masala", "5.95", "Yummy goodness", "food2.jpg"],
                                                      ["Saag Paneer", "5.95", "Yummy goodness", "food3.jpg"],
                                                      ["Alu Gobi", "5.95", "Yummy goodness", "food4.jpg"]
                                                    ]
  end

end