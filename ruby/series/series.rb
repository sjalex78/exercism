# frozen_string_literal: true

# Implemenation of series exercise
class Series
  def initialize(string)
    @string = string
  end

  def slices(substring_length)
    string_length = @string.length
    raise ArgumentError if substring_length > string_length

    string_to_array = @string.chars
    output = []
    string_to_array.each_with_index do |_x, index|
      next if index > string_length - substring_length

      output << string_to_array.slice(index, substring_length).join
    end
    output
  end
end
