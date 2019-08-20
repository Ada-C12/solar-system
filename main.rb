require_relative 'lib/planet'
require_relative 'lib/solar_system'
def main

    puts "Welcome to the Solar System Program:"
    #Instantiated a SolarSystem object:
    sun = SolarSystem.new("sun") 


    #Adding planets to solarsystem:
    earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    jupiter = Planet.new("jupiter", "red-orange", )
    
    





sun.add_planet(earth)
puts sun.list_planets

puts  found_planet = sun.find_planet_by_name("earth")

puts found_planet.summary


end

main