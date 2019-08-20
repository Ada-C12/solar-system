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
    puts "Planets orbiting #{star_name}:"
    puts "1. #{@planets[0]}"
    puts "2. #{@planets[1]}"
  end
  
  
  
end

