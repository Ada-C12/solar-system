require_relative 'planet'
require_relative 'main'

class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    planets << planet
  end

  def list_planets
    planets_string = "Planets orbiting #{@star_name}:"
    count = 0
    @planets.map do |planet|
      count += 1
      planets_string = planets_string + "\n#{count}. #{planet.name}"
    end
    return planets_string
  end


end
