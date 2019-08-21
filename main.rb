require_relative "planet"
require_relative "solar_system"

def main
  # enter solar system
  solar_system = SolarSystem.new("Sol")
  
  # enter planets
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'only planet known to support life')
  venus = Planet.new('Venus', 'yellow-white', 4.867e24, 1.082e8, 'second brightest natural object in the sky') 
  
  # add planets to solar system
  solar_system.add_planet(earth)
  solar_system.add_planet(venus)
  
  # find_planet_by_name
  found_planet = solar_system.find_planet_by_name('Earth')
  
  # command line interface
  puts "\nWelcome to the Solar System Program! Let's learn about planets!"
  puts "Hello, do you want to do (list planets, planet details, add planet or exit)?"
    user_input = gets.chomp.downcase
    
    options = ["list planets", "planet details", "add planet", "exit"]
    while !options.include?(user_input)
      puts "\nInvalid answer, please trying again!"
      user_input = gets.chomp.downcase
    end 
    
    until user_input == "exit"
      case 
      when user_input == "list planets"
        puts list = solar_system.list_planets
        user_input = nil
        
      when user_input == "planet details"
        puts "\nYou can choose between the planets on our list below."
        puts list = solar_system.list_planets
        
        print "Plase enter one planet from our list: " 
        planet_choise = gets.chomp.capitalize
        planet_check = solar_system.find_planet_by_name(planet_choise)
        
        while planet_check == nil
          print "This planet is not in our list. Please try again: "
          planet_choise = gets.chomp.capitalize
          planet_check = solar_system.find_planet_by_name(planet_choise)
        end
        
        puts planet_check.summary 
        user_input = nil
        
      when user_input == "add planet"
        puts "\nPlease enter planet name:"
        name = gets.chomp.capitalize
        puts "Please enter planet color:"
        color = gets.chomp
        puts "Please enter planet mass (kg):"
        mass_kg = gets.chomp
        puts "Please enter planet distance from sun (km):"
        distance_from_sun_km = gets.chomp
        puts "Please enter a fun fact about this planet:"
        fun_fact = gets.chomp
        
        new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
        solar_system.add_planet(new_planet)
        puts list = solar_system.list_planets
        puts new_planet.summary
        
        user_input = nil
      end 
      
      puts "\nThanks for using the Solar System Program!"
      puts "Please type 'exit' to leave this program or choose another option:"
      puts "List planets, planet details, add planet or still want to exit?"
      user_input = gets.chomp.downcase
    end 
  end    
  
  main 
