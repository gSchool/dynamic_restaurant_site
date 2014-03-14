require 'item'
require 'CSV'

class Menu
  def items
    [
      Item.new("Channa Masala", 5.95, "Yummy goodness"),
      Item.new("Chicken Tikka Masala", 5.95, "Yummy goodness")
    ]
  end

  def translate(file)
    data = Array.new
    line_number = 0

    filename = 'config/' + file

    filepath = File.expand_path(filename)
    CSV.foreach(filepath) do |line|
      if line_number == 0
        line_number += 1
      else
        one, two, three, four = line
        data << Item.new(one,two,three,four)
      end
    end
    data
  end
end