require 'item'
require 'csv'

class Menu
  def initialize(file_path)
    @file_path = file_path
  end

  def items
    data = []

    CSV.foreach(@file_path, {headers: true}) do |line|
        data << Item.new(line[0], line[1], line[2], line[3])
    end
    data
  end
end