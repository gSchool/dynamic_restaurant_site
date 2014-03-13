class Import
  def run(file)
    menu_items_array = []
    File.readlines(file).each do |line|
      menu_items_array << line.strip.split(',')
    end
    menu_items_array
  end
end

