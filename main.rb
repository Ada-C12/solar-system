require_relative 'planet'
require_relative 'solar_system'

def main
  # This method should create two different instances of Planet and print out some of their attributes.
  # earth = Planet.new('Earth', 'blue/green', 5.972e24, 1.496e8, 'it is the only planet which supports life.')
  # saturn = Planet.new('Saturn', 'bright blue', 1.4e9, 5.6834e26, "has shown that Saturn\'s south pole has a warm polar vortex")
  # puts earth.summary
  # puts saturn.summary
  
  # update your driver code to create an instance of SolarSystem
  # add all your planets to it and print the list 
  
  
  solar_system = SolarSystem.new('Sol')
  
  earth = Planet.new('Earth', 'blue/green', 5.972e24, 1.496e8, 'it is the only planet which supports life.')
  pluto = Planet.new('Pluto', 'grey', 2, 20, 'it is named after the Roman god of the underworld')
  solar_system.add_planet(earth)
  solar_system.add_planet(pluto)
  
  list = solar_system.list_planets
  puts list
  
  found_planet = solar_system.find_planet_by_name('Earth')
  
  # found_planet is an instance of class Planet
  puts found_planet
  # => #<Planet:0x00007fe7c2868ee8>
  
  puts found_planet.summary
  # => Earth is a blue-green planet ...
end

main
