require 'blurb'

describe Blurb do

  it "returns a  blurb" do
    actual = "We offer a wide range of catering services"

    expected = Blurb.new.paragraph(2)

    expect(expected).to match actual
  end

  it "returns an array of all the blurbs" do

    actual = "We offer a wide range of catering services"

    expected = Blurb.new.arrayify

    expect(expected[1]).to match actual
  end
end