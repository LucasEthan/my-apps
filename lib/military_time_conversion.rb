class ConversionError < StandardError
end

class MilitaryTimeConversion
  attr_reader :mil_time

  def initialize(mil_time)
    @mil_time = mil_time.to_i

    raise(ConversionError, "Military time is invalid") if @mil_time.negative? || @mil_time >= 2400

    raise(ConversionError, "Military time is invalid") if minutes >= 60
  end

  def hours
    hours = mil_time / 100
    standard_hours = hours % 12
    standard_hours = 12 if standard_hours.zero?
    standard_hours
  end

  def minutes
    mil_time % 100
  end

  def period
    if mil_time / 100 >= 12
      "PM"
    else
      "AM"
    end
  end

  def standard_time
    format("#{hours}:%<minutes>02d #{period}", minutes: minutes)
  end
end
