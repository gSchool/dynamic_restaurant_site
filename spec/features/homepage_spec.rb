require 'spec_helper'

describe 'Visiting the home page' do
  
  it "displays all of the menu items" do
    visit "/"
    expect(page).to have_content("Channa Masalla")
    expect(page).to have_content("Chicken Tikka Masalla")
  end

  it "displays the current date" do
    visit "/"
    within("footer") do
      expect(page).to have_content("2014")
    end
  end
end