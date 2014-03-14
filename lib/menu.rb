require 'item'
require 'csv'

class Menu
  def items
    csv_data = CSV.read("/Users/Kaylee/gSchoolWork/dynamic_restaurant_site/config/menu.csv", headers: true)

    array = []
    csv_data.each do |row|
      array.push(Item.new(row["name"], row["price"], row["description"], row["image"]))

    end
    array
  end
end

