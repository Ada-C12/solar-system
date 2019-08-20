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
  
  
  
end

