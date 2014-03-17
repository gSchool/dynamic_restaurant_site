require 'item'
require 'csv'

class Menu
  def initialize(file)
    @spreadsheet = CSV.read(file, headers: true)
  end

  def items(day = Date.today)
    a = []
    @spreadsheet.each do |row|
      if day.wday == day_of_the_week(row["day"])
        a.push(Item.new(row["name"], row["price"], row["description"], row["image"]))
      end
    end
    a
  end

  private
  def day_of_the_week(day_string)
    i = 0
    7.times do
      if Date::DAYNAMES[i] == day_string
        return i
      end
      i += 1
    end
  end
end

