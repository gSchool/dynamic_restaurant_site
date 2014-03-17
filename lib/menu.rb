require 'item'
require 'csv'

class Menu
  def initialize(file)
    @spreadsheet = CSV.read(file, headers: true)
  end

  def items(day = Date.today)
    a = []
    @spreadsheet.each do |row|
      if WdayConverter.new.day_to_num(row["day"]).include?(day.wday)
        a.push(Item.new(row["name"], row["price"], row["description"], row["image"]))
      end
    end
    a
  end
end

class WdayConverter
  def day_to_num(days)
    array_of_days = days.split(",")
    converted_days_array = []
    array_of_days.each do |day|
      i = 0
      7.times do
        if Date::DAYNAMES[i] == day
          converted_days_array.push(i)
        end
        i += 1
      end
    end
  converted_days_array
  end
end

