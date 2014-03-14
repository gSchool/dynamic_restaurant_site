class ItemTranslator
  def translate(filename)
    data = Array.new

    filename = 'config/' + filename
    
    filepath = File.expand_path(filename)
    File.open(filepath, File::RDONLY).each do |info|
      data += info.split(/,/)
    end

    i = 0

    while i < data.length
      data[i] = data[i].chomp
      i+= 1
    end

    all_grouped_items = Array.new
    grouped_set = Hash.new

    set = 0
    set_id = 0
    while set < data.length
        grouped_set["ID"] = set_id
        grouped_set["Name"] = data[set]
        grouped_set["Price"] = data[set+1]
        grouped_set["Description"] = data[set+2]
        grouped_set["Image"] = data[set+3]

      all_grouped_items.push(grouped_set)
        grouped_set = Hash.new
      set += 4
      set_id += 1
    end

    all_grouped_items

  end
end