# frozen_string_literal: true

# Leap Year implementation
class Year
  def self.leap?(year)
    (year % 4).zero? && year % 100 != 0 || (year % 400).zero?
  end
end
