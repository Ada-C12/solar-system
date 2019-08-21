require_relative 'planet'
require_relative 'solar_system'

def main 

  mercury = Planet.new('Mercury', 'gray', 3.285e23, 5.791e7, 'it does not have any moons or rings')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'it is the only planet known to support life')
  puts mercury.summary
  puts earth.summary
  
  solar_system = SolarSystem.new('Sol')

  solar_system.add_planet(earth)
  solar_system.add_planet(mercury)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet
  puts found_planet.summary

end

main