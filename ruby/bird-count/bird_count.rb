class BirdCount
  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
    today_index = @birds_per_day.length - 1
    @birds_per_day[today_index - 1]
    # raise 'Please implement the BirdCount#yesterday method'
  end

  def total
    @birds_per_day.sum
    # raise 'Please implement the BirdCount#total method'
  end

  # def busy_days
  #   busy = []
  #   @birds_per_day.each do |count|
  #     if count >= 5
  #       busy << count
  #     else
  #     end
  #   end
  #   busy.count
  #   # raise 'Please implement the BirdCount#busy_days method'
  # end

  def busy_days
    @birds_per_day.count { |bird_day_count| bird_day_count >= 5 }
    # @birds_per_day.count { _1 >= 5 }
  end

  def day_without_birds?
    @birds_per_day.any? { |bird_day_count| bird_day_count == 0 }
    # raise 'Please implement the BirdCount#day_without_birds method'
  end
end
