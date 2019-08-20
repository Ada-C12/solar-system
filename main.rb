require_relative 'solar-system'
require_relative 'planet'


def main
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  mercury = Planet.new('Mercury', 'red-orange', 5.972e24, 1.496e8, 'HOTTEST PLANET')
  
  solar_system.add_planet(earth)

  solar_system.add_planet(mercury)

  list = solar_system.list_planets
  puts list
end

main

# found_planet = solar_system.find_planet_by_name('Earth')

# # found_planet is an instance of class Planet
# puts found_planet
# # => #<Planet:0x00007fe7c2868ee8>

# puts found_planet.summary