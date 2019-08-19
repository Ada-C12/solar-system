require_relative "planet"
require_relative "solar_system"

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'Once had water! Might still?')

  planets = [earth,mars]
  planets.each do |planet|
    puts "#{planet.summary}\n\n"
  end

  sun = SolarSystem.new("Sun")
  sun.add_planet(earth)
  sun.add_planet(mars)
  puts sun.list_planets

  found_planet = sun.find_planet_by_name("Earth")
  puts "Searching for Earth.."
  puts found_planet
  puts found_planet.summary
end

main
