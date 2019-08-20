require_relative 'planet'
require_relative 'solar_system'

def main
  sun = SolarSystem.new("Sun")
  venus = Planet.new("Venus", "burnt sienna", 4.867e24, 108208930, "it is the second brightest object in the night sky")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "I live on it")
  mars = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "bees")
  
  sun.add_planet(earth)
  sun.add_planet(venus)
  sun.add_planet(mars)
  
  puts sun.list_planets
  
  found_planet = sun.find_planet_by_name("earth")
  puts found_planet.summary
  
end


main

