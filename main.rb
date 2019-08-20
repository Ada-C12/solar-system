require_relative 'planet'
require_relative 'solar_system'


def add_planet
  puts "What is the planet's name?"
  name = gets.chomp
  
  puts "What color is the planet?"
  color = gets.chomp
  
  puts "What is its mass in kg?"
  mass = gets.chomp.to_f
  
  puts "What is it's distance from the sun in km?"
  distance = gets.chomp.to_f
  
  puts "And last, what's a fun fact about it?"
  fun_fact = gets.chomp
  
  planet = Planet.new(name, color, mass, distance, fun_fact)
  
  return planet
  
end


def main
  sun = SolarSystem.new("Sun")
  venus = Planet.new("Venus", "burnt sienna", 4.867e24, 108208930, "it is the second brightest object in the night sky")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "I live on it")
  mars = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "it has a mountain 3x the size of Everest")
  
  sun.add_planet(earth)
  sun.add_planet(venus)
  sun.add_planet(mars)
  
  
  puts "Welcome to the solar system! What would you like to do?"
    
    run = true
    
    while run = true
      
      options = ["list planets", "planet details", "add planet", "exit"]
      puts "You can choose: list planet, planet detials, add planet, or exit"
      
      selection = gets.chomp
      until options.include?(selection.downcase) 
        puts "I'm sorry, please choose an option or exit"
        selection = gets.chomp
      end
      
      case selection
      when "list planets"
        puts sun.list_planets
      when "planet details"
        puts sun.find_planet_by_name(selection)
      when "add planet"
        sun.add_planet
      when "exit"
        puts "See you next time!"
        play = false
      end
      
    end
  end
  main 
  