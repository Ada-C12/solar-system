require_relative 'planet'
require_relative 'solar_system'

# To do: Edit planet init function to accept another var within the same initiation attempt, 

# # Wave 1:
# def main
#   saturn = Planet.new('Saturn', 'yellow', 565, 653366, 'it has cool rings')
#   puts saturn.summary 

#   pluto = Planet.new('Pluto', 'blue', 1000, 9584748, 'it is a controversial planet pick')
#   puts pluto.summary 
# end 

# main

#Wave 2:
# solar_system = SolarSystem.new('Io')

# pluto = Planet.new('Pluto', 'blue', 1000, 10, 'it is a controversial planet pick')
# solar_system.add_planet(pluto)

# kuiper_belt = Planet.new('Kuiper Belt', 'gray', 10, 19, 'it is not a planet at all just rocks')
# solar_system.add_planet(kuiper_belt)

# list = solar_system.list_planets
# puts list

# found_planet = solar_system.find_planet_by_name('pLUto')
# puts found_planet
# puts found_planet.summary 

# pluto_to_kuiper = solar_system.distance_between(pluto, kuiper_belt)
# puts "The distance between Pluto and the KB is #{pluto_to_kuiper}."

#Wave 3
solar_system = SolarSystem.new('Io')

pluto = Planet.new('Pluto', 'blue', 5968594, 29203948, 'it is a controversial planet pick')
solar_system.add_planet(pluto)

kuiper_belt = Planet.new('Kuiper Belt', 'gray', 57447, 1594035940, 'it is not a planet at all, just rocks')
solar_system.add_planet(kuiper_belt)

puts "\n\n*~*~*WELCOME TO SPACE*~*~*\n\nNavigating to your solar system...\n"
sleep 1     
puts"   *                   "
puts"        *              "
puts"               *         " 
puts"                      *  "
puts"              *          "
puts"                    *    "
sleep 1
puts "^that's the big dipper"
sleep 1
puts "\n\n*~*~*WE HAVE ARRIVED AT THE SOLAR SYSTEM ORBITING #{solar_system.star_name.upcase}*~*~*"

loop do 
  puts "\nWhat would you like to do next? \nA. list planets\nB. get some planet details\nC. add a planet\nD. find distance between planets\nE. exit"
  user_input = gets.chomp.upcase 
  
  if user_input == "A"
    puts "\n*~*~*PLANET LIST TIME*~*~*\n"
    puts solar_system.list_planets
  elsif user_input == "B" 
    puts "\n*~*~*PLANET INFO TIME*~*~*\nWhich planet would you like to learn about?"
    user_planet = gets.chomp.upcase 
    while solar_system.find_planet_by_name(user_planet) == "We could not find your planet :/"
      print "We could not find your planet. Please try again: "
      user_planet = gets.chomp.upcase
    end 
    puts "\n" + solar_system.find_planet_by_name(user_planet).summary
  elsif user_input == "C"
    puts "\n*~*~*ADD A PLANET*~*~*\nWhat is the new planet's name?"
    new_planet_name = gets.chomp.capitalize
    puts "What is the new planet's color?"
    new_planet_color = gets.chomp
    puts "What is the new planet's mass in kg?"
    new_planet_mass = gets.chomp.to_i
    puts "What is the new planet's distance from the sun in km?"
    new_planet_distance = gets.chomp.to_i
    puts "What is a fun fact about the new planet?"
    new_planet_fact = gets.chomp
    user_generated_planet = Planet.new(new_planet_name, new_planet_color, new_planet_mass, new_planet_distance, new_planet_fact)
    solar_system.add_planet(user_generated_planet)
    puts "We have added the planet #{new_planet_name} to this solar system."
  elsif user_input == "D"
    puts "\n*~*~*DISTANCE CALCULATION TIME*~*~*\nWhat is the origin planet?"
    origin_input = gets.chomp.upcase
    while solar_system.find_planet_by_name(origin_input) == "We could not find your planet :/"
      puts "Planet not recognized, please try again: "
      origin_input = gets.chomp.upcase
    end 
    origin_planet = solar_system.find_planet_by_name(origin_input)
    puts "What is the destination planet?"
    destination_input = gets.chomp.upcase
    while solar_system.find_planet_by_name(destination_input) == "We could not find your planet :/"
      puts "Planet not recognized, please try again: "
      destination_input = gets.chomp.upcase
    end 
    destination_planet = solar_system.find_planet_by_name(destination_input)
    puts "The distance between these two planets is #{solar_system.distance_between(origin_planet, destination_planet)} km."
  elsif user_input == "E"
    puts "\n*~*~*GOODBYE PLANETS*~*~*\n\n\n"
    exit
  else 
    puts "We could not understand your input. Please type a letter A through E."
  end 
end 

