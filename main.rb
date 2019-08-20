require_relative 'planet'
require_relative 'solar_system'

def main
  # WAVE 1
  mars = Planet.new("Mars", "red", 6.39e23, 227940000, "takes its name from the Roman god of war")
  jupiter = Planet.new("Jupiter", "brown", 1.898e27, 778547200, "is the fastest spinning planet in the solar system")
  
  puts mars.summary
  puts jupiter.summary
  
  # WAVE 2
  solar_system = SolarSystem.new('Sol')
  
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  
  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('jupiTer')

  puts found_planet
  puts found_planet.summary
  
  
end

main
