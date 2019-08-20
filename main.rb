require_relative 'planet'
require_relative 'solar_system'

def main
  mercury = Planet.new('Mercury', 'Dark gray', 2.867e23, 1.08e6, 'Mercury is the smallest planet in the Solar System.' )
  venus = Planet.new('Venus', 'Yellow-white', 3.867e23, 1.08e8, 'Venus rotate in the opposite direction to other planets.')
  earth = Planet.new('Earth', 'Blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'Red', 6.42e23, 2.276e8, 'Mars is home to the highest mountain in our solar system.')
  jupiter = Planet.new('Jupiter', 'Brown-orange', 6.42e23, 2.276e8, 'Mars is home to the highest mountain in our solar system.')
  saturn = Planet.new('Saturn', 'Yellow-brown', 6.42e23, 2.276e8, 'Mars is home to the highest mountain in our solar system.')
  uranus = Planet.new('Uranus', 'Blue', 6.42e23, 2.276e8, 'Mars is home to the highest mountain in our solar system.')
  neptune = Planet.new('Neptune', 'Azure-blue', 6.42e23, 2.276e8, 'Mars is home to the highest mountain in our solar system.')
  pluto = Planet.new('Pluto', 'Red-white', 6.42e23, 2.276e8, 'Mars is home to the highest mountain in our solar system.')

  #Wave 1
  puts mars.summary
  puts venus.summary
  
  #Wave 2
  planets = []
  solar_system = SolarSystem.new('Sol', planets)
  
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)
  solar_system.add_planet(neptune)
  solar_system.add_planet(pluto)
  
  puts solar_system.list_planets

  found_planet = solar_system.find_planet_by_name("Earth")
  puts found_planet
  puts found_planet.summary
  
end

main

