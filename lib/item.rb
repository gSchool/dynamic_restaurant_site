class Item
  attr_reader :name, :price, :description, :image_name

  def initialize (name, price, description, image_name = nil)
    @name = name
    @price = price
    @description = description
    @image_name = image_name

  end

  def == (other)
    self.name == other.name
    self.price == other.price
    self.description == other.description
  end
end