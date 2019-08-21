require_relative 'planet'
require_relative 'solar_system'

# Wave 3

# Restructure main method to do the following:
#   Create a SolarSystem and add some Planets
def main
  
  venus = Planet.new('Venus', 'reddish-brown', 4.867e24, 1.082e8, 'This planet is named after the Roman goddess Venus')
  mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'The Mars rover, Opportunity, ended on February, 13, 2019')
  
  solar_system = SolarSystem.new('Sol')
  
  solar_system.add_planet(venus)
  solar_system.add_planet(mars)
  
  # Enter a control loop that repeatedly asks the user what to do next. The two options at this point are list planets and exit.
  puts "What would you like to do?
  To see the list of planets, type 'list planet'.
  To get details on a planet, type 'planet details'.
  To add a planet, type 'add planet'.
  To exit this program, type 'exit': "
  user_input = gets.chomp.downcase
  
  until user_input == "exit"
    if user_input == "list planet"
      list = solar_system.list_planets
      puts list
      
      puts "What would you like to do?
      To see the list of planets, type 'list planet'.
      To get details on a planet, type 'planet details'.
      To add a planet, type 'add planet'.
      To exit this program, type 'exit': "
      user_input = gets.chomp.downcase
      
      # Add a planet details option to the control loop.
    elsif user_input == "planet details"
      # When the user picks this option, the program should should call a separate method that will:
      #   Ask them for the name of the planet they wish to learn about
      #   Display details for that planet
      puts "What is the name of the planet you want details on?: "
      user_planet = gets.chomp.downcase
      found_planet = solar_system.find_planet_by_name(user_planet)
      puts found_planet.summary
      
      puts "What would you like to do?
      To see the list of planets, type 'list planet'.
      To get details on a planet, type 'planet details'.
      To add a planet, type 'add planet'.
      To exit this program, type 'exit': "
      user_input = gets.chomp.downcase
      
      # Add an add planet option to the control loop. When the user picks this option, the program should call a separate method that will:
      #   Ask the user for details about the planet
      #   Create a new instance of Planet with that info
      #   Add it to the SolarSystem
    elsif user_input == "add planet"
      puts "What is the planet's name?: "
      new_planet_name = gets.chomp.capitalize
      
      puts "What is the planet's color?: "
      new_planet_color = gets.chomp.downcase
      
      puts "What is the planet's mass in kg?: "
      new_planet_mass_kg = gets.chomp.to_i
      
      puts "What is the planet's distance from the sun in km?: "
      new_planet_distance_from_sun_km = gets.chomp.to_i
      
      puts "Give a fun fact about this planet: "
      new_planet_fun_fact = gets.chomp.downcase
      
      new_planet = Planet.new(new_planet_name, new_planet_color, new_planet_mass_kg, new_planet_distance_from_sun_km, new_planet_fun_fact)
      
      solar_system.add_planet(new_planet)
      puts new_planet.summary
      
      
      
      puts "What would you like to do?
      To see the list of planets, type 'list planet'.
      To get details on a planet, type 'planet details'.
      To add a planet, type 'add planet'.
      To exit this program, type 'exit': "
      user_input = gets.chomp.downcase
    else
      puts "Invalid entry. Please choose one of the options below:
      To see the list of planets, type 'list planet'.
      To get details on a planet, type 'planet details'.
      To add a planet, type 'add planet'.
      To exit this program, type 'exit': "
      user_input = gets.chomp.downcase
      
    end
    
  end
  
end


main