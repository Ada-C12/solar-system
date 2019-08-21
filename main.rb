require_relative 'planet'
require_relative 'solar_system'

def main
  # create a SolarSystem
  solar_system = SolarSystem.new("Sol")
  
  # add planets to SolarSystem
  earth = Planet.new("Earth", "Blue-Green", 5.972e24, 1.496e8, "Only planet known to support life.")
  mars = Planet.new("Mars", "Red", 0.64171, 227.9, "Atmosphere is composed primarily of carbon dioxide.")
  solar_system.add_planet(mars)
  solar_system.add_planet(earth)
  
  puts "\n"
  puts "Welcome to my Solar System Program!\n"
  puts "***********************************"
  
  while true
    puts "\n"
    puts "Please select a command from the following menu: \n"
    puts "A - List Planets\n"
    puts "B - Learn about Planets"
    puts "C - Add a new Planet to the Solar System"
    puts "D - Exit\n"
    command = gets.chomp.upcase
    
    case command
    when "A"
      list = solar_system.list_planets 
      puts list
    when "B"
      puts "Which planet would you like to learn about?"
      planet_choice = gets.chomp
      planet_details = solar_system.find_planet_by_name(planet_choice)
      if planet_details != nil 
        puts planet_details.summary 
      else
        puts "ERROR: Planet doesn't exist. Please choose from the list of planets (see option A)."
      end
    when "C"
      puts "What is the planet's name?"
      planet_name = gets.chomp.capitalize
      puts "What is the planet's color?"
      planet_color = gets.chomp.capitalize
      puts "What is the planet's mass (kg)?"
      planet_mass = gets.chomp.to_i
      puts "What is the planet's distance (km) from the Sun?"
      planet_distance_from_sun = gets.chomp.to_i
      puts "What is a fun fact about the planet?"
      planet_fun_fact = gets.chomp.capitalize
      new_planet = Planet.new(planet_name, planet_color, planet_mass, planet_distance_from_sun, planet_fun_fact)
      solar_system.add_planet(new_planet)
    when "D"
      exit
    else
      puts "Invalid command. Please choose from the list."
    end 
  end
end
main