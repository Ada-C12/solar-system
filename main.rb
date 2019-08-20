# main.rb, solar_system and planet driver code

require_relative 'planet'
require_relative 'solar_system'

def main
  #instantiate planets
  
  mercury = Planet.new('Mercury', 'gray', 3.3011e23, 57.91e6, 'A year is 88 days long')
  
  venus = Planet.new('Venus', 'red-brown', 4.867e24, 108.2e6, 'Second-brightest natural object in the sky')
  
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 149.6e6, 'Only planet known to support life')
  
  mars = Planet.new('Mars', 'red', 6.39e23, 227.9e6, 'Home to the tallest mountain in the solar system')
  
  jupiter = Planet.new('Jupiter', 'white-orange-brown-red', 1.898e27, 778.5e6, 'Fastest-spinning planet in the solar system')
  
  # call method summary on earth and print result
  earth.summary
  
  # instantiate solar_system
  solar_system = SolarSystem.new('Sol')
  
  # call add_planet method on solar_system 
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  
  # call list_planets method on solar_system
  list = solar_system.list_planets
  
  # output list
  puts list 
  
  found_planet = solar_system.find_planet_by_name('Earth')
  
  # found_planet is an instance of class Planet
  puts found_planet
  
  puts found_planet.summary
end

main
