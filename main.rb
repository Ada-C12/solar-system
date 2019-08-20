# main.rb
require_relative 'planet'
require_relative 'solar_system'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'reddish', 6.39e23, 15009.6, 'mars bars')
  
  solar_system = SolarSystem.new('Sol')
  
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  should_continue = true
  
  while should_continue
    puts "\nWhat would you like to do? \n1. list planets \n2. planet details \n3. add planet \n4. find distance between planets\n5. exit\n"
    input = gets.chomp
    input = input.downcase
    
    case input
    when "1", "list planets" 
      puts 
      puts solar_system.list_planets
    when "2", "planet details"
      puts "\nWhich planet would you like to learn more about?"
      planet_choice = gets.chomp
      
      found_planet = solar_system.find_planet_by_name(planet_choice)
      puts found_planet.summary
      
    when "3", "add planet"
      puts "\nPlease enter the following information about your planet:"
      puts "Planet name:"
      name = gets.chomp
      puts "Planet color:"
      color = gets.chomp
      puts "Planet's mass (in kg):"
      mass_kg = gets.chomp.to_f
      puts "Planet's distance from the sun (in km):"
      distance_from_sun_km = gets.chomp.to_f
      puts "Fun fact about the planet:"
      fun_fact = gets.chomp
      
      new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      
      solar_system.add_planet(new_planet)
      
    when "4", "find distance between planets"
      puts "\nWhich two planets would you like to find the distance between?"
      puts "First planet:"
      planet1 = gets.chomp
      puts "Second planet:"
      planet2 = gets.chomp
      
      puts "\nThe distance between #{planet1} and #{planet2} is #{solar_system.distance_between(planet1, planet2)} km."
      
    when "5", "exit"
      puts "\nBye!"
      should_continue = false
    end
    
  end
  
end


main