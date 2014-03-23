
class Blurb

  def initialize
    file = (File.expand_path("../../config/paragraphs.txt", __FILE__))
    text = File.open(file).read
    @array_of_blurbs = text.split(/_____/)
  end

  def arrayify
    @array_of_blurbs
  end

  def paragraph(num)
    @array_of_blurbs[num - 1]
  end



end