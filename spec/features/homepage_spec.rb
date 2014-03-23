require 'spec_helper'
require 'timecop'

describe 'Visiting the home page' do

  it "displays the year dynamically" do
    visit "/"

    within("footer") do
      expect(page).to have_content("2014")
    end
  end

  it "displays the pictures" do
    visit "/"

    page.should have_css('img')
    #this is a horribly inaccurate test

  end

  it "displays 10% off prices on wednesday" do

  pending

    Timecop.travel(Time.local(2014, 3, 19)) do
      puts "in the homepage spec the date is wed? #{Date.today.wednesday?}"
      visit "/"
      expect(page).to have_content("5.36")
  #how do i re-render the whole page???

    #if Time.new.wednesday?
    #  expect(page).to have_content("5.36")
    #else
    #  expect(page).to have_content("5.95")
    #end

    end

  end

  it "displays thursday dishes on a thursday" do
    visit "/"

    if Time.new.thursday?
      expect(page).to have_content("Channa")
    end
  end

  it "displays the text in paragraphs from the text file" do

    paragraph = "Please join us and experience Authentic Indian Cuisine"

    expect(page).to have_content(paragraph)
  end


end




#this is testing the html file