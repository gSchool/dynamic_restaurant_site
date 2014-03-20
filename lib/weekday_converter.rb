class WeekdayConverter
  def self.day_to_num(days_in_string)
    array_of_days = days_in_string.split(",")
    converted_days_array = []
    array_of_days.each do |day|
      i = 0
      7.times do
        if Date::DAYNAMES[i] == day
          converted_days_array.push(i)
        end
        i += 1
      end
    end
    converted_days_array
  end
end