require_relative 'planet'
require_relative 'solar_system'

def main
  enter_data = "run"
  
  while enter_data != "quit"
    
    print "Create a new solar system:  What is the star? "
    star = gets.chomp.downcase
    
    star = SolarSystem.new(star.capitalize)
    
    puts "Add planets for your solar system: "
    star.add_planet(gets.chomp.downcase)
    puts "Add details for your planet: "
    
    
    puts "Do you want to quit? "
    enter_data = gets.chomp
    # earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life.')
    
    
    puts our_solar_system.list_of_planets
    puts
    
    found_planet = our_solar_system.find_planet_by_name('Earth')
    puts "Found planet summary: "
    puts found_planet.summary
    
    
    
    
  end
  
  main