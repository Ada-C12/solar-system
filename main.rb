require_relative 'planet'
require_relative 'solar_system'

def main
  earth = Planet.new("Earth", "Blue-Green", 5.972e24, 1.496e8, "Only planet known to support life.")
  mars = Planet.new("Mars", "Red", 0.64171, 227.9, "Atmosphere is composed primarily of carbon dioxide.")
  
  puts earth.name
  puts earth.color
  puts mars.name
  puts mars.color
  
  puts earth.summary
  puts mars.summary
  
  # create an instance of SolarSystem and add all planets to the list
  solar_system = SolarSystem.new('Sol')
  
  solar_system.add_planet(mars)
  solar_system.add_planet(earth)
  
  list = solar_system.list_planets 
  puts list
  
  found_planet = solar_system.find_planet_by_name("Earth") 
  puts found_planet
  # if the planet string that is passed into find_planet_by_name doesn't exist, don't execute .summary method
  if found_planet != nil 
    puts found_planet.summary 
  end
end

main

