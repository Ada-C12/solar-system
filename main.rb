# main.rb
require_relative 'planet'
require_relative 'solar_system'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'reddish', 6.39e23, 15009.6, 'mars bars')
  
  
  solar_system = SolarSystem.new('Sol')
  
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  
  list = solar_system.list_planets
  puts list
  
  found_planet = solar_system.find_planet_by_name('Earth')
  
  # found_planet is an instance of class Planet
  puts found_planet
  # => #<Planet:0x00007fe7c2868ee8>
  
  puts found_planet.summary
  # => Earth is a blue-green planet ...
  
  puts "The distance between earth and mars is #{solar_system.distance_between("Earth", "Mars")} km."
  
  
end

main