require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new('Sol')
  
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e16, 'Only planet known to support life')
  borg = Planet.new('Cyborg', 'neon green', 10.993e24,-2.496e90, 'Humans have not yet discovered this planet' )
  
  # adding planets to the solar system
  solar_system.add_planet(earth)
  solar_system.add_planet(borg)
  
  # printing a list of planets
  puts solar_system.list_planets
  
  # finding planets within the solar system
  found_planet = solar_system.find_planet_by_name('Earth')
  
  if found_planet.length == 0
    puts "Your planet was not found in solar system."
  else
    puts "Planet(s) with that name: "
    found_planet.each {|x| puts x.summary}
  end
  
  puts solar_system.distance_between("Earth", "Cyborg")
  
end

main