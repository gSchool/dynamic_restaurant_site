require 'item'
require 'csv'
require 'weekday_converter'

class Menu
  def get_menu(file)
    @spreadsheet = CSV.read(file, headers: true)
  end

  def items(day = Date.today)
    a = []
    @spreadsheet.each do |row|
      if WeekdayConverter.day_to_num(row["day"]).include?(day.wday)
        a.push(Item.new(row["name"], row["price"], row["description"], row["image"]))
      end
    end
    a
  end
end

