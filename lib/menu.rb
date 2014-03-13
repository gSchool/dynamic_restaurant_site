require 'item'
require 'csv'

class Menu
  def initialize(file)
    @spreadsheet = CSV.read(file, headers: true)
  end

  def items
    a = []
    @spreadsheet.each do |row|
      a.push(Item.new(row["name"], row["price"], row["description"], row["image"]))
    end
    a
  end
end

