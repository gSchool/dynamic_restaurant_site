require 'spec_helper'

describe 'Visiting the home page' do

  it "displays all of the menu items" do
    visit "/"
    expect(page).to have_content("Channa Masala")
    expect(page).to have_content("Chicken Tikka Masala")
  end

  it "displays the current year for the copyright" do
    visit "/"

    within("footer") do
      expect(page).to have_content("2014")
    end
  end
end