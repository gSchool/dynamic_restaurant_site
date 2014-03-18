require 'spec_helper'

describe 'Visiting the home page' do

  it "displays all of the menu items" do
    visit "/"
    expect(page).to have_content("Channa Masala")
  end

  it "displays the current year for the copyright date" do
    visit "/"
    within("footer") do
      expect(page).to have_content("2014")
    end
  end

  it "displays paragraphs" do
    visit "/"
    expect(page).to have_content("But be all this as it may")
    expect(page).to have_content("This done, the carpenter received orders")
  end
end