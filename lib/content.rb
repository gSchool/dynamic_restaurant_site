require 'csv'

class Content

  def initialize(file_path)
    @paragraphs = CSV.read(file_path, headers: true)
  end

  def paragraphs
    @paragraphs["content"]
  end
end