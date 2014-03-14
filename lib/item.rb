class Item
  attr_reader :name, :description, :image_name

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
    self.image_name == other.image_name
  end

  def price(day = Date.today)
    if day.wednesday?
      (Float(@price)*0.9).round(2).to_s
    else
      @price
    end
  end
end