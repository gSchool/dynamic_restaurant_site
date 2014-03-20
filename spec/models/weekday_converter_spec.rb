require 'weekday_converter'

describe WeekdayConverter do
  it "converts a string of days of the week into an array of numbers" do
    expect(WeekdayConverter.day_to_num("Monday,Tuesday")).to eq [1,2]
  end
end