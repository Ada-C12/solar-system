require_relative "planet"
require_relative "solar_system"

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life', 'none (we are not cool enough)')
  mercury = Planet.new('Mercury', 'dark-grey', 3.285e23, 5.791e7, 'Closest planet to sun', 'Sailor Mercury')

  solar_system = SolarSystem.new('Sun')
  solar_system.add_planet(earth)
  
  found_planet = solar_system.find_planet_by_name("eArth")
  puts found_planet
  puts found_planet.summary

end

main