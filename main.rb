require_relative 'lib/planet' 
require_relative 'lib/solar_system'

def main
  # ... do stuff with planets ...
  planet_1 = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'only planet known to support life')
  planet_2 = Planet.new('Mars', 'brownish-red', 6.4171e23, 2.2794e8, 'second smallest planet in the solar system behind Mercury')
  
  puts planet_1.summary
  puts "\n"
  puts planet_2.summary
end

main
puts "\n"

# solar_system = SolarSystem.new('Sol')

# # earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

# solar_system.add_planet(earth)

# mars = Planet.new('Mars', 'brownish-red', 6.4171e23, 2.2794e8, 'The second smallest planet in the solar system behind Mercury')

# solar_system.add_planet(mars)

# list = solar_system.list_planets
# puts list
# puts "\n"

# found_planet = solar_system.find_planet_by_name('eArth')

# puts found_planet
# puts found_planet.summary
# puts solar_system.distance_between(mars, earth)