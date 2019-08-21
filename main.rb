# main.rb
require_relative 'planet'
require_relative 'solar_system'


def main
  
  # instantiate sol
  sol = SolarSystem.new('Sol')
  
  #instantiate planets
  mercury = Planet.new('Mercury', 'gray', 3.3011e23, 57.91e6, 'A year is 88 days long')
  
  venus = Planet.new('Venus', 'red-brown', 4.867e24, 108.2e6, 'Second-brightest natural object in the sky')
  
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 149.6e6, 'Only planet known to support life')
  
  mars = Planet.new('Mars', 'red', 6.39e23, 227.9e6, 'Home to the tallest mountain in the solar system')
  
  jupiter = Planet.new('Jupiter', 'white-orange-brown-red', 1.898e27, 778.5e6, 'Fastest-spinning planet in the solar system')
  
  # call add_planet method on sol 
  sol.add_planet(mercury)
  sol.add_planet(venus)
  sol.add_planet(earth)
  sol.add_planet(mars)
  sol.add_planet(jupiter)
  
  # call list_planets method on sol
  list = sol.list_planets
  
  found_planet = sol.find_planet_by_name('Earth')
  
end

def get_new_planet_details
  puts "\nYou discovered a new planet! Awesome!"
  
  # ask user for planet details 
  print "What is the name of this planet? "
  name = gets.chomp
  
  print "What color is this planet? "
  color = gets.chomp
  
  print "What is the mass of this planet in kilograms? "
  mass_kg = gets.chomp.to_f
  
  print "How far is this planet from the sun in kilometers? "
  distance_from_sun_km = gets.chomp.to_f
  
  print "What is a fun fact about this planet? "
  fun_fact = gets.chomp
  
  # create a new instance of planet with user-provided details
  new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
  p new_planet
  
  # add the new planet to our solar system, i.e. call add planet method on new planet 
  sol.add_planet(new_planet)
  
  # # output updated list of planets 
  # puts "All right, here's an updated list of our solar system's planets"
  
  # # call list_planets 
  # # list = sol.list_planets
  # puts list
  
end

print "\nWelcome to the solar system program! Please enter one of these options: list planets, planet details, add planet, or exit: "
command = gets.chomp.downcase

case command
when 'list planets'
  puts list
when 'planet details'
  print 'Please enter a planet name: '
  # collect planet_name from user
  planet_name = gets.chomp 
  # call find_planet_by_name on planet_name variable
  found_planet = sol.find_planet_by_name(planet_name)
  puts found_planet.summary 
when 'add planet'
  # program calls a separate method that asks user for details about planet
  get_new_planet_details
when 'exit' 
  return puts "\nThanks for using the solar system program. Goodbye!"
end


main
