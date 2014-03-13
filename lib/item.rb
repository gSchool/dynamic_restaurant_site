class Item
  attr_reader :name, :price, :description, :image_name

  def initialize(name, price, description, image_name)
    @name = name
    @price = price
    @description = description
    @image_name = image_name
  end

end