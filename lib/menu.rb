require 'item'
require 'csv'

class Menu
  # pass in the file location so we can change
  # product file without breaking tests.
  # aka injecting a dependency
  def initialize(location_of_file)
    @location_of_file = location_of_file
  end

  def items
    result = []
    CSV.foreach(@location_of_file, {headers: true}) do |row|
      result << Item.new(row[0], row[1], row[2])
    end
    result
  end
end