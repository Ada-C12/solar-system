require_relative "solar_system"
require_relative "planet"

def main

  # solar_system = SolarSystem.new('Sol')

  # earth = Planet.new('Earth', "Mars", 'Jupiter', 'Pluto', 'Mercury')
  # solar_system.add_planet(earth)
  
  # list = solar_system.list_planets
  # puts list

earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'is the only planet known to support life')
mars = Planet.new('Mars', 'red', 6.4219e23, 2.3e9, 'is named after the Roman god of war')

puts earth.summary
puts mars.summary 

#  list = list_planets

return 
end

main
# 
#6.4219e23, 2.3e9,