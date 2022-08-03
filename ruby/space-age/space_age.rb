# frozen_string_literal: true

# Interpolation of spaceAge
class SpaceAge
  PLANET_ORBITS = {
    mercury: 0.2408467,
    venus: 0.61519726,
    earth_seconds: 31_557_600,
    earth: 1.0,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }.freeze

  def initialize(space_seconds)
    @space_seconds = space_seconds
  end

  PLANET_ORBITS.each do |planet, ratio|
    define_method "on_#{planet}" do
      earth_seconds = @space_seconds.fdiv(PLANET_ORBITS[:earth_seconds])
      earth_seconds.fdiv(ratio).round(2)
    end
  end
end
