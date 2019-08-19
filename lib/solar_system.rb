class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    list_of_planets = "Planets orbiting #{@star_name}"
    @planets.each_with_index do |planet, num|
      list_of_planets << "\n#{num + 1}. #{planet.name}"
    end
    return list_of_planets
  end
end
