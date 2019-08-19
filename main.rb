require_relative 'planet.rb'
require_relative 'solar_system.rb'

def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'Named after the Roman God of War')
  
  solar_system.add_planet(earth)
  
  list = solar_system.list_planets
  puts list
end

main

# solar_system = SolarSystem.new('Sol')

# earth = Planet.new('Earth', ...)
# solar_system.add_planet(earth)

# list = solar_system.list_planets
# puts list
# # => Planets orbiting Sol
# # => 1.  Earth
