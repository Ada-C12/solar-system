require_relative 'planet'
require_relative 'solarsystem'

def main_menu
  puts "Hello and Welcome to the Build Your Own Planet Game!"
  puts "What would you like to do next? You can choose from: \n\n 1. List Planets \n 2. Planet Details \n 3. Add Planet \n 4. Exit"
  main
end

def main 
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  bart_simpson = Planet.new("El Barto", "yellow-ish", 123243, 23432534, "Only planet whos motto is 'eat my shorts' ")
  lisa_simpson = Planet.new("Paul Anka Knows", "orange", 123242, 2343254, "Only planet to always play Jazz")
  maggie_simpson = Planet.new("Maggie Simpson", "blue", 2342343, 23121, "Only planet that never ages")
  
  solar_system = SolarSystem.new("Los Simpsons")
  solar_system.add_planet(earth)
  solar_system.add_planet(bart_simpson)
  solar_system.add_planet(lisa_simpson)
  solar_system.add_planet(maggie_simpson)
  list = solar_system.list_planets
  
  user_input = "y" 
  
  while user_input == "y" 
    puts $\ #output record seperator
    puts "Make a selection \n"
    choice = gets.chomp.to_i
    
    list = solar_system.list_planets
    
    if choice == 1 
      print list
    elsif choice == 2 
      puts "Lets find out more about the planets"
      puts list
      puts "\nselect a planet from the list"
      planet_info = gets.chomp
      found_planet = solar_system.find_planet_by_name(planet_info)
      
      if found_planet
        puts "You have chosen #{found_planet.name}."
        puts found_planet.summary
      end
      
    elsif choice == 3 
      puts "please enter planet name"
      name = gets.chomp
      puts "Please give your planet a color"
      color = gets.chomp
      puts "Please tell me how big your planet is"
      mass_kg = gets.chomp.to_i
      puts "Please tell me how far it is from Earth"
      distance_from_sun_km = gets.chomp.to_i
      puts "Please tell me your planets fun fact"
      fun_fact = gets.chomp
      new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      solar_system.add_planet(new_planet)
    elsif choice == 4 
      answer = "y"
      while answer == "y"
        puts "Do you want to play again? Yes or No?"
        answer = gets.chomp 
        if answer == "yes" 
          main_menu
        else 
          break
        end
      end
      exit
    end
  end 
end
main_menu