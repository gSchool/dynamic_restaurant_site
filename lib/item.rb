class Item
  def initialize(name, price, description)
    @name = name
    @price = price
    @description = description
  end

  def name
    @name
  end

  def price
    @price
  end

  def description
    @description
  end

  def == (other)
    self.name == other.name
    self.price == other.price
    self.description == other.description
  end
end