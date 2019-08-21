require_relative 'planet'
require_relative 'solar_system'

def main
  
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life.')
  venus = Planet.new('Venus', 'yellow and white', 177.7, 67.24, 'It is known as the morning star.')
  
  # puts earth.summary
  # puts venus.summary
  # puts
  
  puts
  
  # planet_array = [earth, venus]
  # p planet_array
  
  our_solar_system = SolarSystem.new('Sun')
  our_solar_system.add_planet(earth)
  our_solar_system.add_planet(venus)
  
  p our_solar_system
  
  puts our_solar_system.list_of_planets
  puts
  
  
  puts "Found planet fun fact: "
  found_planet = find_planet_by_name('Earth')
  # puts found_planet
  # puts found_planet.summary
  
end

main