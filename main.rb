require_relative "planet"
require_relative "solar_system"

def main
  # create 1st instance of planet
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  # create 2nd instance of planet
  mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'Once had water! Might still?')
  # print out some attributes
  planets = [earth,mars]
  planets.each do |planet|
    puts "#{planet.summary}\n\n"
  end

  sun = SolarSystem.new("Sun")
  sun.add_planet(earth)
  sun.add_planet(mars)
  puts sun.list_planets

  puts "To compare - Earth: #{earth}"

  found_planet = sun.find_planet_by_name("Earth")
  puts "Searching for Earth.."
  puts found_planet
end

main
