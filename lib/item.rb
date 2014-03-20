class Item
  attr_reader :name, :price, :description, :image

  def initialize(name, price, description, image = nil, days_available = nil)
    @name = name
    @price = price
    @description = description
    @image = image
    @days_available = days_available
  end

  def discount?
    if this_weekday?(3)
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

  def weekdays_available
    @weekdays_available = []

    @weekdays_available << 1 if @days_available.downcase.include?("monday")
    @weekdays_available << 2 if @days_available.downcase.include?("tuesday")
    @weekdays_available << 3 if @days_available.downcase.include?("wednesday")
    @weekdays_available << 4 if @days_available.downcase.include?("thursday")
    @weekdays_available << 5 if @days_available.downcase.include?("friday")
    @weekdays_available << 6 if @days_available.downcase.include?("saturday")
    @weekdays_available << 7 if @days_available.downcase.include?("sunday")

    @weekdays_available
  end

  def available?(day)
    @weekdays_available.include?(day)
  end

  def this_weekday?(given_weekday)
    day = Date.today

    if day.wday == given_weekday
      return true
    else
      return false
    end
  end
end
