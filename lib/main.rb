require_relative "planet"
require_relative "solar_system"

def main
  saturn = Planet.new("Saturn", "yellow-brown", 5.68e26, 1.434e9, "It can be seen with the naked eye")
  
  # puts saturn.summary

  mars = Planet.new("Mars", "red", 6.39e23, 2.279e8, "It is home to the tallest mountain in the solar system")
  
  # puts mars.summary

  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(saturn)
  solar_system.add_planet(mars)

  list = solar_system.list_planets
  puts list

  puts @planets
  found_planet = solar_system.find_planet_by_name("mars")

  puts found_planet

  puts found_planet.summary

end

main



