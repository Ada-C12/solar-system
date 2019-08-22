require_relative 'lib/planet'
require_relative 'lib/solar_system'

# creates new instance of Planet and adds it to instant of SolarSystem
def add_new_planet(sun)
  puts "Great. You want to add a planet. We need some details."
  print "What is your planet's name? >"
  planet_name = gets.chomp 
  name = planet_name.capitalize
  print "What is the color(s) of #{planet_name}? >"
  colors = gets.chomp 
  print "What is the mass of #{planet_name} in km? >"
  mass = gets.chomp.to_i
  print "What is the distance from the sun, in km? >"
  distance = gets.chomp.to_i
  print "What is a fun fact about #{planet_name}? >"
  fun_fact = gets.chomp
  user_planet = Planet.new(name, colors, mass, distance, fun_fact)
  sun.add_planet(user_planet) 
  puts "Thanks for your help! Here's our updated list:"
  puts sun.list_planets
end

# displays information about specified planets in sun.
def planet_details(sun)
  puts "What planet do you want to learn about?"
  planet_choice = gets.chomp.capitalize.strip
  #uses find enerable to see if planet choice is inside sun. Return error message if planet_choice not present; lists details if it is.
  planet_display = sun.find_planet_by_name(planet_choice)
  if planet_display == nil 
    puts "That planet is not in #{sun.star_name}. Please add this planet if you would like to do so."
  else
    puts planet_display.summary
  end
end

def main
  sun = SolarSystem.new('Sun')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.39e23, 227.9, "Named after the Roman god of war")
  jupitar = Planet.new('Jupitar', 'white, red, orange, brown, yellow', 1.8982e1027, 778.5, 'cannot become a star')
  saturn = Planet.new('Saturn', 'yellow-brown', 5.683e26, 1.4e9, "The rings surrounding Saturn are thin and not completely solid" )
  sun.add_planet(earth)
  sun.add_planet(mars)
  sun.add_planet(jupitar)
  sun.add_planet(saturn)
 
  done = nil
  until done
    puts "Would you like to: list planets, planet details, add planet or exit?"
    choice = gets.chomp.downcase

    case choice 
    when "list planets"
      puts "Planets orbiting #{sun.star_name}"
      puts sun.list_planets
    when "planet details"
      planet_details(sun)
    when "add planet"
      add_new_planet(sun)
    when "exit"
      puts "See you later!"
      done = true
    else 
      puts "Invalid Entry" 
    end
  end
end

main