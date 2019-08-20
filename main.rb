require_relative "planet"
require_relative "solar_system"

# main.rb should contain one method called main that will exercise your code
def main
# create an instance of SolarSystem, add all your Planets to it
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  saturn = Planet.new('saturn', 'yellow-brown', 5.683e26, 1.434e9, 'Best known for its fabulous ring system')
    
  solar_system.add_planet(earth)
  solar_system.add_planet(saturn)


# Build a command line interface (CLI) to allow a user to interact with your classes
# Enter a control loop that repeatedly asks the user what to do next
  input = ""
  until input == "exit"
    print "What would you like to do? (1. List Planets, 2. Planet Details 3. Add Planet 4. Exit) > "
      input = gets.chomp.downcase

    case input
# List all current planets in solar_system
    when "list planets", "list", "1"
      puts solar_system.list_planets

# Ask user for the name of the planet they wish to learn about and display details for that planet
    when "planet details", "details", "2"
      print "Which planet do you want to learn about?"
        input = gets.chomp.downcase
        planet = solar_system.find_planet_by_name(input)
        puts planet.summary
    
# Ask user for details about new planet
# Create a new instance of Planet with that info and add it to the SolarSystem
    when "add planet", "add", "3"
      puts "Please enter planet details."
      print "Name: "
        name = gets.chomp.to_s.downcase.capitalize
      print "#{name} Color: "
        color = gets.chomp.to_s.downcase
      print "#{name} Mass (kg): "
        mass = gets.chomp.to_s.downcase
      print "#{name} Distance from Sun (km): "
        distance_from_sun = gets.chomp.to_s.downcase
      print "#{name} Fun Fact: "
        fact = gets.chomp.to_s.downcase

      newplanet = Planet.new(name, color, mass, distance_from_sun, fact)
      solar_system.add_planet(newplanet)
    end
  end
end

main

