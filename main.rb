require_relative 'solar_system'
require_relative 'planet'

def main
  solar_system = SolarSystem.new('Sol')
  
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('Earth')

  # found_planet is an instance of class Planet
  puts found_planet

  puts found_planet.summary
end

main
