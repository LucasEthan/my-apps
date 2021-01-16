class ConversionError < StandardError
end

class MilitaryTimeConversion
  attr_reader :mil_time

  def initialize(mil_time)
    @mil_time = mil_time.to_i

    raise(ConversionError, "Military time is invalid") unless @mil_time.positive? && @mil_time < 24
  end

  def standard_time
    standard_time = mil_time - 12 if mil_time > 12
    if mil_time < 12 && mil_time > 0
      puts "#{mil_time} in standard time is #{mil_time} am"
    elsif mil_time == 12
      puts "#{mil_time} in standard time is #{mil_time} pm"
    elsif mil_time == 24
      puts "#{mil_time} in standard time is #{standard_time} midnight"
    else
      puts "#{mil_time} in standard time is #{standard_time} pm"
    end
  end
end
