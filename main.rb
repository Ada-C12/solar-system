require_relative 'planet'
require_relative 'solar_system'

def main
  sun = SolarSystem.new("Sun")
  venus = Planet.new("Venus", "burnt sienna", 4.867e24, 108208930, "it is the second brightest object in the night sky")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "I live on it")
  mars = Planet.new("Mars", "red", 6.29e23, 2.279e8, "it has a mountain 3x the size of Everest")
  
  sun.add_planet(earth)
  sun.add_planet(venus)
  sun.add_planet(mars)
  
  
  puts "Welcome to the solar system! What would you like to do?"
    
    run = true
    
    while run = true
      
      options = ["list planets", "planet details", "add planet", "exit"]
      puts "You can choose: list planets, planet detials, add planet, or exit"
      
      selection = gets.chomp
      until options.include?(selection.downcase) 
        puts "I'm sorry, please choose an option or exit"
        selection = gets.chomp
      end
      
      case selection
      when "list planets"
        puts sun.list_planets
      when "planet details"
        puts "Please type the name of the planet you'd like to know more about?"
        puts "Choose from the list below:"
        puts sun.list_planets
        option = gets.chomp
        puts sun.find_planet_by_name(option)
      when "add planet"
        sun.create_planet 
      when "exit"
        puts "See you next time!"
        return run = false
      end
      
    end
  end
  main
  