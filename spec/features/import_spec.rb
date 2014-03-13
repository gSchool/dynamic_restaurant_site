require 'spec_helper'
require 'import'

describe Import do
  it "should import the csv into an array and separate by commas" do
    expect(Import.new.run('config/menu.csv').count).to eq File.readlines('config/menu.csv').count
  end

end