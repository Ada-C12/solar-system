class SolarSystem
  attr_reader :planets
  def initialize(star_name)
    @star_name = star_name
    @planets = Array.new
  end
  def add_planet(Planet)
    @planets << Planet
  end
end
