# Author: Hallie Johnson
# Date: 8/20/19
# Assignment: Solar System


require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')
  
  # Wave 1 - CREATE PLANETS
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)
  
  mercury = Planet.new('Mercury', 'dark gray', 3.285e23, 5.7e7, 'Mercury has a molten core.')
  solar_system.add_planet(mercury)
  
  venus = Planet.new('Venus', 'red', 45, 98, 'Such a good planet.')
  solar_system.add_planet(venus)
  
  mars = Planet.new('Mars', 'red', 6.39e23, 2.27e8, 'Home to the tallest mountain in the solar system')
  solar_system.add_planet(mars)
  
  # Wave 2 - LIST OF ALL PLANETS
  list = solar_system.list_planets
  puts list
  
  puts "\n"
  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet
  puts found_planet.summary
  
  puts "\n"
  found_planet = solar_system.find_planet_by_name('Mercury')
  puts found_planet
  puts found_planet.summary
  
  puts "\n"
  found_planet = solar_system.find_planet_by_name('Venus')
  puts found_planet
  puts found_planet.summary
  
  puts "\n"
  found_planet = solar_system.find_planet_by_name('Mars')
  puts found_planet
  puts found_planet.summary
  
  puts "\n"
  
  
end

main
