require 'spec_helper'

describe 'Visiting the home page' do

  it "displays all of the menu items" do
    visit "/"
    expect(page).to have_content("Channa Masala")
    expect(page).to have_content("Chicken Tikka Masala")
  end

  it "displays the current year in the copyright description" do
    visit "/"
    within('footer') do
      expect(page).to have_content(2014)
    end
  end

  it "displays the correct number of items on the menu" do
    visit "/"
    menu = Menu.new.create_menu("config/menu.csv")
    i = 0
    page.all(:css, '.price').each do |el|
      expect(el).to have_content(menu[i].price)
      i += 1
    end
  end

end