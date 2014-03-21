require "item"

require "csv"

class Menu

  def initialize
    @array = []

    CSV.foreach(File.expand_path('../config/menu.csv', __dir__)) do |row|
      one,two,three,four,five = row
      @array << Item.new(one, two, three, four, five)
    end

    @array = @array[1..-1]

    #maybe only include those items in the array where the 5th array item == the day it is


  end

  def items
    @array
  end

  def items_to_string(num)
    first_item = @array[num]
    s = "#{first_item.name}, #{first_item.price}, #{first_item.description}, #{first_item.pic}, #{first_item.day}"
    s
  end

end