require 'spec_helper'

describe 'Visiting the home page' do
  
  it "displays all of the menu items" do
    visit "/"
    expect(page).to have_content("Channa Masala")
    expect(page).to have_content("Chicken Tikka Masala")
  end

  it "displays the current year in the copyright description" do
    visit "/"
    expect(page).to have_content(Time.now.year)
  end

  
end