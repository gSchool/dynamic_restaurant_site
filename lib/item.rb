class Item
  def initialize(name, price, description, picture)
    @name = name
    @price = price
    @description = description
    @picture = picture
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

  def picture
    @picture
  end

  def == (other)
    self.name == other.name
    self.price == other.price
    self.description == other.description
    self.picture == other.picture
  end
end