class Item
  attr_reader :name, :description, :image_name

  def initialize(name, price, description, image_name)
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

  def price
    if Time.now.wednesday?
      return @price -= @price *0.1
    else
      @price
    end
  end

end