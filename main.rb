require_relative 'planet'
require_relative 'solar_system'

def main
  
  earth = Planet.new("Earth","mostly blue with white clouds", 5.97e24, 1.496e8, "It has bees")
  mars = Planet.new("Mars", "rusty butterscotch", 10e23, 227883110.4, "It does not have bees")
  
  puts earth.summary
  puts mars.summary
  
  
  solar_system = SolarSystem.new("Sun")
  
  
  
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  puts solar_system.list_planets
  
  # puts solar_system.list_planets
  # found_planet = solar_system.find_planet_by_name("earth")
  # puts found_planet
end

main