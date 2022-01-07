# frozen_string_literal: true

class ResistorColorDuo
  BAND_VALUES = {
    Black: 0,
    Brown: 1,
    Red: 2,
    Orange: 3,
    Yellow: 4,
    Green: 5,
    Blue: 6,
    Violet: 7,
    Grey: 8,
    White: 9
  }.freeze

  # def self.value(args)
  #   band_values = args.map do |band|
  #      BAND_VALUES[band.capitalize.to_sym]
  #   end
  #   (band_values[0].to_s + band_values[1].to_s).to_i
  # end

  def self.value(args)
    args.slice(0, 2).map do |band|
      BAND_VALUES[band.capitalize.to_sym].to_s
    end.join.to_i
  end
end
