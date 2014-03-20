require 'spec_helper'

describe 'Visiting the home page' do
  
  it "displays all of the menu items" do
    visit "/"
    expect(page).to have_content("Channa Masala")
    expect(page).to have_content("Chicken Tikka Masala")
    expect(page).to have_content("Alu Gobi")
  end

  it "displays the current year for the copyright" do
    visit "/"
    within("footer") do
      expect(page).to have_content("2014")
    end
  end

  it "displays the main paragraph" do
    visit "/"
    expect(page).to have_content("But be all this as it may; let the unseen, ambiguous synod in the air, or the vindictive princes and potentates of fire, have to do or not with earthly Ahab, yet, in this present matter of his leg, he took plain practical procedures; he called the carpenter.")
  end
end