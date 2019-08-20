require_relative 'planet'
require_relative 'solar_system'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life.')
  venus = Planet.new('Venus', 'yellow and white', 4.86732e24, 6.7e7, 'It is known as the morning star.')
  
  
  our_solar_system = SolarSystem.new('Sun')
  our_solar_system.add_planet(earth)
  our_solar_system.add_planet(venus)
  
  
  while true
    puts "\nWhat do you want to do next?"
    print "\'List\' planets in the solar system, \'learn\' about a planet, \'add\' a new planet, or \'quit\' the program? "
    task = gets.chomp.downcase
    if task == "list"
      print our_solar_system.list_of_planets
    elsif task == "learn"
      print "\nWhat planet would you like to learn about? "
      found_planet = our_solar_system.find_planet_by_name(gets.chomp.capitalize)
      if found_planet == 'not found'
        puts "That planet does not exist in this solar system."
      else
        puts found_planet.summary
      end
    elsif task == "add"
      puts "\nTell me about your planet: "
      print "What is it's name? "
      input1 = gets.chomp.downcase
      print "What color is it? "
      input2 = gets.chomp.downcase
      print "How big is it? "
      input3 = gets.to_f
      print "How far is it from the sun? "
      input4 = gets.to_f
      print "What is a fun fact about your planet? "
      input5 = gets.chomp
      
      planet = input1
      planet = Planet.new(input1.capitalize, input2, input3, input4, input5)
      our_solar_system.add_planet(planet)
    elsif task == "quit"
      break
    else
      puts "Invalid Entry: Please enter: \'list\', \'learn\', \'add\', or \'quit\' "
    end
  end
end

main