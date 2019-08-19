class SolarSystem
  attr_reader :planets
  def initialize(star_name)
    @star_name = star_name
    @planets = Array.new
  end
end
