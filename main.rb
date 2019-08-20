require_relative 'planet'
require_relative 'solar_system'

def main
  
  earth = Planet.new("Earth","mostly blue with white clouds", 5.97e24, 1.496e8, "It has bees")
  mars = Planet.new("Mars", "rusty butterscotch", 10e23, 227883110.4, "Mars has the tallest mountain in the solar system (Olympus Mons)")
  
  solar_system = SolarSystem.new("Sun")
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  puts solar_system.list_planets
  
end

main