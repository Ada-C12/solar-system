require_relative 'lib/planet'
require_relative 'lib/solar_system'



def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.39e23, 227.9, "Named after the Roman god of war")
  
  puts earth.summary
  puts 
  puts mars.summary
  puts

  solar_system = SolarSystem.new('Sun')
  jupitar = Planet.new('Jupitar', 'white, red, orange, brown, yellow', 1.8982e1027, 778.5, 'cannot become a star')
  saturn = Planet.new('Saturn', 'yellow-brown', 5.683e26, 1.4e9, "The rings surrounding Saturn are thin and not completely solid" )
  solar_system.add_planet(jupitar)
  solar_system.add_planet(saturn)
  list = solar_system.list_planets
  puts list
  puts
  

  found_planet = solar_system.find_planet_by_name('jupitar')
  puts found_planet.summary
end

main

