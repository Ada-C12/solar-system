require_relative "lib/planet"
require_relative "lib/solar_system"

def get_planet_details(solar_system)
  print "Which planet are you interested in? "    
  planet_name = gets.chomp.capitalize  
  return solar_system.find_planet_by_name(planet_name)
end

def add_new_planet(solar_system)
  print "What is the planet's name?: "
  name = gets.chomp.capitalize
  
  print "What color is it?: "
  color = gets.chomp
  
  print "What is its mass in kg?: "
  mass_kg = gets.chomp.to_f
  
  print "What is its distance from the sun in km?: "
  distance_from_sun_km = gets.chomp.to_f
  
  print "What is a fun fact about it?: "
  fun_fact = gets.chomp
  
  planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
  
  solar_system.add_planet(planet)
end

def main
  # Create some planets
  zorg = Planet.new("Zorg", "purple", 4.12e24, 57.9e6, "Planet has a roller coaster.")  
  tron = Planet.new("Tron", "blue", 3.56e24, 227.9e6, "Planet uses nuclear energy.")
  tron_two = Planet.new("Tron", "green", 3.56e24, 100.7e6, "Planet uses solar energy.")
  giga = Planet.new("Giga", "red", 8.34e24, 75.5e6, "Planet has no water.")
  duo = Planet.new("Duo", "green", 1.45e24, 18.5e6, "Planet has rain everyday.")
  
  # Create a solar system and add the planets
  solar_system = SolarSystem.new("Sun")
  solar_system.add_planet(zorg)
  solar_system.add_planet(tron)
  solar_system.add_planet(tron_two)
  solar_system.add_planet(giga)
  solar_system.add_planet(duo)
  
  puts "Welcome to Dianna's Solar System"
  
  play = true
  while play
    puts "\nWhat would you like to do?"
    print 'Your options are "list planets", "planet details", "add planet", or "exit": '
    
    answer = gets.chomp.downcase
    
    case answer
    when "list planets"
      puts solar_system.list_planets
    when "planet details"
      puts get_planet_details(solar_system)
    when "add planet"
      add_new_planet(solar_system)
    when "exit"
      puts "Goodbye!"
      play = false
    else
      puts "Please choose a valid option."
    end
  end  
end

main
