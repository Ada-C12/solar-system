require_relative "planet"
require_relative "solar_system"

def main
  
  solar_system = SolarSystem.new('Sol')
  
  mercury = Planet.new('Mercury', 'gray', 3.285e23, 5.791e7, 'A year on Mercury is 88 days long')
  venus = Planet.new('Venus', 'yellowish', 4.867e24, 1.082e8, 'Second brightest natural object in the sky')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'Named after the Roman god of war')
  jupiter = Planet.new('Jupiter', 'orange', 1.898e27, 7.785e8, 'Has 67 moons')
  saturn = Planet.new('Saturn', 'yellow-brown', 5.683e26, 1.434e9, 'Most distant planet that can be seen with the naked eye')
  uranus = Planet.new('Uranus', 'blue', 8.681e25, 2.871e9, 'It takes 84 earth-years for Uranus to travel around the sun')
  neptune = Planet.new('Neptune', 'bright blue', 1.024e26, 4.495e9, 'The coldest planet in the solar system')
  
  puts mercury.summary
  puts venus.summary
  puts earth.summary
  puts mars.summary
  puts jupiter.summary
  puts saturn.summary
  puts uranus.summary
  puts neptune.summary
  
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)
  solar_system.add_planet(neptune)
  
  list = solar_system.list_planets
  puts list
  
end

main



