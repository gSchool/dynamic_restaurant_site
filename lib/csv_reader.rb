class Csv_reader
  def run(file)
    menu_items_array = []
    IO.readlines(file).each do |line|
      menu_items_array << line.strip.split(',')
    end
    menu_items_array
  end
end