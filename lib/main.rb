######################################################
#~~~~~~~~~~~~~~~~~~~ WAVES 1 & 2 ~~~~~~~~~~~~~~~~~~~~#
######################################################

# require_relative "planet"
# require_relative "solar_system"

# def main

#   solar_system = SolarSystem.new('Sol')

#   mercury = Planet.new('Mercury', 'gray', 3.285e23, 5.791e7, 'A year on Mercury is 88 days long')
#   venus = Planet.new('Venus', 'yellowish', 4.867e24, 1.082e8, 'Second brightest natural object in the sky')
#   earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
#   mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'Named after the Roman god of war')
#   jupiter = Planet.new('Jupiter', 'orange', 1.898e27, 7.785e8, 'Has 67 moons')
#   saturn = Planet.new('Saturn', 'yellow-brown', 5.683e26, 1.434e9, 'Most distant planet that can be seen with the naked eye')
#   uranus = Planet.new('Uranus', 'blue', 8.681e25, 2.871e9, 'It takes 84 earth-years for Uranus to travel around the sun')
#   neptune = Planet.new('Neptune', 'bright blue', 1.024e26, 4.495e9, 'The coldest planet in the solar system')

#   puts mercury.summary
#   puts venus.summary
#   puts earth.summary
#   puts mars.summary
#   puts jupiter.summary
#   puts saturn.summary
#   puts uranus.summary
#   puts neptune.summary

#   solar_system.add_planet(mercury)
#   solar_system.add_planet(venus)
#   solar_system.add_planet(earth)
#   solar_system.add_planet(mars)
#   solar_system.add_planet(jupiter)
#   solar_system.add_planet(saturn)
#   solar_system.add_planet(uranus)
#   solar_system.add_planet(neptune)

#   list = solar_system.list_planets
#   puts list

#   found_planet = solar_system.find_planet_by_name('Earth')
#   puts "\nFound: #{found_planet}"
#   puts found_planet.summary

#   distance_difference = solar_system.distance_between('Earth', 'Mars')
#   puts "\nThe distance between Earth and Mars is #{distance_difference} km (assuming they are aligned with one another)."

# end

# main


######################################################
#~~~~~~~~~~~~~~~~~~~~ WAVE 3 ~~~~~~~~~~~~~~~~~~~~~~~~#
######################################################

require_relative "planet"
require_relative "solar_system"

def main
  
  solar_system = SolarSystem.new("Sol")
  
  mercury = Planet.new('Mercury', 'gray', 3.285e23, 5.791e7, 'A year on Mercury is 88 days long')
  venus = Planet.new('Venus', 'yellowish', 4.867e24, 1.082e8, 'Second brightest natural object in the sky')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'Named after the Roman god of war')
  jupiter = Planet.new('Jupiter', 'orange', 1.898e27, 7.785e8, 'Has 67 moons')
  saturn = Planet.new('Saturn', 'yellow-brown', 5.683e26, 1.434e9, 'Most distant planet that can be seen with the naked eye')
  uranus = Planet.new('Uranus', 'blue', 8.681e25, 2.871e9, 'It takes 84 earth-years for Uranus to travel around the sun')
  neptune = Planet.new('Neptune', 'bright blue', 1.024e26, 4.495e9, 'The coldest planet in the solar system')
  
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)
  solar_system.add_planet(neptune)
  
  user_input = ""
  valid_inputs = ["list planets", "planet details", "exit"]
  until user_input.downcase == "exit"
    puts "\nPlease choose an option: \n1) List Planets \n2) Planet Details\n3) Exit"
    user_input = gets.chomp
    
    while !valid_inputs.include? user_input.downcase
      print "Error! Your input is invalid. Please enter either 'List Planets' or 'Exit': "
      user_input = gets.chomp
    end
    
    if user_input.downcase == "list planets"
      puts solar_system.list_planets
    elsif user_input.downcase == "planet details"
      print "Great! Please enter a planet name to see its details: "
      chosen_planet = gets.chomp
      chosen_planet = solar_system.find_planet_by_name(chosen_planet)
      puts "\n#{chosen_planet}"
      puts chosen_planet.summary rescue nil
    else
      exit
    end
  end
  
  
  
end

main