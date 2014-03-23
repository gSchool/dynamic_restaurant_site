#require 'timecop'

class Item

  attr_reader :name, :description, :pic

  def initialize(name, price, description, pic, day)
    @name = name
    @price = price
    @description = description
    @pic = pic
    @day = day
  end

  def day
    if @day.nil?
      "all"
    else
      @day
    end
  end

  def price
    puts "HERE"
    puts Date.today.wednesday?
    if Date.today.wednesday?
      (@price.to_f * 0.9).round(2)
    else
      @price
    end
  end

  def == (other)
    self.name == other.name
    self.price == other.price
    self.description == other.description
    self.pic == other.pic
    self.day == other.day
  end
end