require_relative 'planet'
require_relative 'solar_system'

def main
  sun = SolarSystem.new("Sun")
  venus = Planet.new("Venus", "burnt sienna", 4.867e24, 108208930, "it is the second brightest object in the night sky")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "I live on it")
  mars = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "it has a mountain 3x the size of Everest")
  
  sun.add_planet(earth)
  sun.add_planet(venus)
  sun.add_planet(mars)
  
  # options = ["list planets", "planet details", "add planet", "exit"]
  # puts "Welcome to the solar system! What would you like to do?"
  #   puts "You can either list planets or exit:"
  
  #   selection = gets.chomp
  #   until options.include?(selection.downcase) 
  #     puts "I'm sorry, please choose either list planets or exit"
  #     selection = gets.chomp
  #   end
  
  found_planet = sun.find_planet_by_name("mars")
  
  puts found_planet.summary
end
main 
