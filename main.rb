require_relative 'planet'
require_relative 'solar_system'

solar_system = SolarSystem.new('Sol')

earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'only planet known to support life')

mars = Planet.new('Mars', 'orange', 6.39e23, 2.279e8, 'named after Roman god of war')

def main(planet)
  puts planet.summary 
end

main(earth)
main(mars)

solar_system.add_planet(earth)
solar_system.add_planet(mars)

list = solar_system.list_planets
puts list

found_planet = solar_system.find_planet_by_name('Earth')

puts found_planet
main(found_planet)
