class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  BASE_RATE = 221.0

  def sucess_rate
    if (1..4).include?(@speed)
      1
    elsif (5..8).include?(@speed)
      0.9
    elsif @speed == 9
      0.8
    elsif @speed == 10
      0.77
    else
      base_unit
    end
  end

  def production_rate_per_hour
    @speed * BASE_RATE * sucess_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
