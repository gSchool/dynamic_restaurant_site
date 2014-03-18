class MainParagraphs
  def initialize(file_path)
    @file_path = file_path
  end

  def read_file
    data = Array.new
    File.readlines(@file_path).each do |line|
    data << line.strip if !line.strip.empty?
    end
    data.join(" ")
  end
end