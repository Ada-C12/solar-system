require 'awesome_print'
require_relative 'solar-system'
require_relative 'planet'


def main
  solar_system = SolarSystem.new('Sol')

  mercury = Planet.new('Mercury', 'red-orange', 2.842e36, 1.016e7, 'HOTTEST PLANET')

  venus = Planet.new('Venus', 'blue', 3.562e36, 1.456e7, 'planet of loOooOOOoveE!')

  earth = Planet.new('Earth', 'blue-green', 5.972e36, 1.496e8, 'Only planet known to support life')

  mars = Planet.new('Mars', 'red', 6.172e36, 2.248e7, 'martianz')

  jupiter = Planet.new('Jupiter', 'brown', 7.832e24, 2.506e8, 'the big boi')
  
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('Earth')

  #distance_planets = solar_system.distance_between('Earth', 'Venus')

  puts found_planet

  puts found_planet.summary
end

main

# found_planet = solar_system.find_planet_by_name('Earth')

# # found_planet is an instance of class Planet
# puts found_planet
# # => #<Planet:0x00007fe7c2868ee8>

# puts found_planet.summary