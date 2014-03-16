class Item
  attr_reader :name, :price, :description, :image

  def initialize(name, price, description, image = nil)
    @name = name
    @price = price
    @description = description
    @image = image
  end

  def discount?
    day = Date.today

    if day.wday == 3
      day = true
    else
      day = false
    end

    if day
      @price = (@price.to_f * 0.9).round(2)
    else
      @price
    end
  end

  def == (other)
    self.name == other.name
    self.price == other.price
    self.description == other.description
  end
end
