class Movie < ActiveRecord::Base
  def showtime
    "#{formatted_date} (#{formatted_time})"
  end

  def formatted_date
    showtime_date.strftime("%B %d, %Y")
  end

  def formatted_time
    formatted_string = showtime_time.min.zero? ? "%l%p" : "%l:%M%p"
    showtime_time.strftime(formatted_string).strip.downcase
  end
end
