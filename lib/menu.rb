require 'item'
require 'csv'

class Menu
  def initialize
    @spreadsheet = CSV.read(File.expand_path('../dynamic_restaurant_site/config/menu.csv'), headers: true)
  end

  def items
    a = []
    @spreadsheet.each do |row|
      a.push(Item.new(row["name"], row["price"], row["description"], row["image"]))
    end
    a
  end
end

