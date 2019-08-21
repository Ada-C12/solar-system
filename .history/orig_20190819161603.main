require_relative 'planet'
require_relative 'solar_system'

def main
  
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life.')
  venus = Planet.new('Venus', 'yellow and white', 177.7, 67.24, 'It is known as the morning star.')
  
  puts
  
  our_solar_system = SolarSystem.new('Sun')
  our_solar_system.add_planet(earth)
  our_solar_system.add_planet(venus)
  
  puts our_solar_system.list_of_planets
  puts
  
  found_planet = our_solar_system.find_planet_by_name('Earth')
  puts "Found planet summary: "
  puts found_planet.summary
  
  
  
  
end

main