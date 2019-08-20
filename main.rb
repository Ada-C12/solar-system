require_relative 'planet'
require './solar_system'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.summary
  
  mars = Planet.new('Mars', 'red', 100, 200, 'It has aliens on it')
  puts mars.summary

  solar_system = SolarSystem.new('Sun')

  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  hahaha = "string thing here"
  solar_system.add_planet(hahaha)
  
  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet.inspect

  # puts solar_system.find_planet_by_name('comet123')

end

main


