class ItemTranslator
  def translate(filename)
    data = []
    filepath = File.expand_path('config/test_menu.csv')
    File.open(filepath, File::RDONLY).each do |info|
      data += info.split(/,/)
    end

    i = 0

    while i < data.length
      data[i] = data[i].chomp
      i+= 1
    end
    data
  end
end