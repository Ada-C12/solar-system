require_relative "planet"
require_relative "solar_system"

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Earth is the only planet known to support life')
  neptune = Planet.new("Neptune", "blue", 1.02e26, 4.495e8, 'Neptune is the Coldest Planet in the Solar System')
  mars = Planet.new("Mars", "red", 6.42e23, 227.9e9, 'Pieces of Mars have been found on Earth')
  puts "\n#{earth.summary}"
  puts "\n#{mars.summary}" 
  puts "\n#{neptune.summary}"

#wave2

  solar_system = SolarSystem.new("sun")
  solar_system.add_planet(earth)
  solar_system.add_planet(neptune)
  solar_system.add_planet(mars)
  list = solar_system.list_planets
  puts list
  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet
  puts found_planet.summary
end
main
