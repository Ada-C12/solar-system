require_relative 'planet'
require_relative 'solar_system'

def main
  
  earth = Planet.new("earth", "green", 55.9, 10, "earth is big")
  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(earth)
  # return solar_system.list_planets
  
  found_planet = solar_system.find_planet_by_name("krypton")
  puts found_planet
end

main
