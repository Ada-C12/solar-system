# Wave 2 Code
require_relative "solar_system"
require_relative "planet"

# def main
#   solar_system = SolarSystem.new('Sol')
  
#   earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'is the only planet known to support life')
#   mars = Planet.new('Mars', 'red', 6.4219e23, 2.3e9, 'is named after the Roman god of war')
  
#   solar_system.add_planet(earth)
#   solar_system.add_planet(mars)
  
#   list = solar_system.list_planets
#   puts list

# found_planet = solar_system.find_planet_by_name('Earth')
# puts found_planet

#   if found_planet != nil
#     puts found_planet.summary
#   end
# end

# main

#######
# Wave 3

solar_system = SolarSystem.new('Sol')
earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'is the only planet known to support life')
mars = Planet.new('Mars', 'red', 6.4219e23, 2.3e9, 'is named after the Roman god of war')
venus = Planet.new('Venus', 'yellow', 4.867e24, 1.08e10, 'Venus is named after the Roman goddess of love and beauty.')
saturn = Planet.new('Saturn', 'brown', 5.683e24, 1.42e20, 'Saturn has the most extensive rings in the solar system.')

solar_system.add_planet(earth)
solar_system.add_planet(mars)
solar_system.add_planet(venus)
solar_system.add_planet(saturn)

ask = "\nLet's learn about planets! What would you like to do?\n Options: list planets, planet details, add planet, exit"
puts ask
input = gets.chomp.downcase

until input == "exit"
  if input == "list planets"
    list = solar_system.list_planets
    puts list
    puts ask
    input = gets.chomp.downcase
    elsif input == 'planet details'
      puts "What planet would you like to learn about?"
      planet_details_input = gets.chomp.downcase
      puts solar_system.find_planet_by_name(planet_details_input).summary
      puts ask
      input = gets.chomp.downcase
    elsif input == 'add planet'
      solar_system.user_add_planet
      puts ask
      input = gets.chomp.downcase
    elsif input != "exit" || input !=  "list planets" || input !=  "planet details" || input != "add planet"
      puts "Oops! That's not an option. Try again."
      input = gets.chomp.downcase
    end 
  end


  

