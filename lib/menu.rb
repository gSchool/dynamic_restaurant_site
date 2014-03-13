require 'item'

class Menu
  def items
      data = IO.readlines("/Users/elsaschneiders/gSchoolWork/dynamic_restaurant_site/dynamic_restaurant_site/config/menu.csv")
      num_rows = data.count - 1

      i=0
      data.each do |split_me|
        data[i]= split_me.split(",")
        i+=1
      end

      i=0
      entrees = []

      while i<num_rows
        entrees[i] = Item.new(data[i+1][0].chomp, data[i+1][1].chomp, data[i+1][2].chomp)
        i+=1
      end
    entrees
  end
end