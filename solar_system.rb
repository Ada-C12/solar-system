require_relative 'planet'

class SolarSystem
  
  attr_reader :star_name, :planets
  attr_writer :planet
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet(planet)
    planets << planet.name
  end
  
  def list_planets
    return "Planets orbiting the star '#{star_name}':
    1. #{@planets[0]}
    2. #{@planets[1]}"
  end
  
  
  
end

