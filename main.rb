require_relative 'planet'
require_relative 'solar_system'
def main
  
  venus = Planet.new('Venus', 'reddish-brown', 4.867e24, 1.082e8, 'This planet is named after the Roman goddess Venus')
  mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'The Mars rover, Opportunity, ended on February, 13, 2019')
  
  puts venus.summary
  puts mars.summary
  
  solar_system = SolarSystem.new('Sol')
  
  solar_system.add_planet(venus)
  solar_system.add_planet(mars)
  
  list = solar_system.list_planets
  puts list
end

main