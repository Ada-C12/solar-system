require_relative "planet"
require_relative "solar_system"

def main
  our_solar_system = SolarSystem.new('Sol')
  
  # adds planets to the solar system
  add_initial_planets(our_solar_system)
  
  # asks user what actions they would like to perform
  exit = false
  until exit == true
    print "\nWhat would you like to do next (list planets, exit, planet details, add planet, find distance)? "
    decision = gets.chomp
    
    case decision
    when "list planets"
      puts our_solar_system.list_planets
    when "exit"
      exit = true
    when "planet details"
      planet_details(our_solar_system)
    when "add planet"
      add_planet(our_solar_system)
    when "find distance"
      distance_between_planets(our_solar_system)
    else
      puts "Not a valid input, please try again."
    end
  end  
end

def add_initial_planets(solar_system)
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e16, 'Only planet known to support life')
  cyborg = Planet.new('Cyborg', 'neon green', 10.993e24,2.496e90, 'Humans have not yet discovered this planet' )
  mars = Planet.new('Mars', 'red', 9.972e24, 2.496e16, 'This planet was named after the Roman god of war')
  solar_system.add_planet(earth)
  solar_system.add_planet(cyborg)
  solar_system.add_planet(mars)
end

def planet_details(solar_system)
  print "What planet would you like to learn about? "
  planet = gets.chomp
  puts solar_system.find_planet_by_name(planet)[0].summary
end

def add_planet(solar_system)
  print "Please enter the following details about your planet.\nPlanet name: "
  name = gets.chomp
  print "Planet color: "
  color = gets.chomp
  print "Planet mass (kg): "
  mass = gets.chomp.to_i
  while mass <= 0
    print "Please enter an integer greater than 0. Planet mass (kg): "
    mass = gets.chomp.to_i
  end
  print "Distance from star (km): "
  distance = gets.chomp.to_i
  while distance <= 0
    print "Please enter an integer greater than 0. Planet distance from star (kg): "
    distance = gets.chomp.to_i
  end
  print "Fun fact: "
  fact = gets.chomp
  
  new_planet = Planet.new(name, color, mass, distance, fact)
  solar_system.add_planet(new_planet)
end

# Adjust for errors if planet are not valid
def distance_between_planets(solar_system)
  print "Please enter the name of two planets.\nPlanet 1 name: "
  planet_1 = gets.chomp
  print "Planet 2 name: "
  planet_2 = gets.chomp
  print "#{planet_1.capitalize} and #{planet_2.capitalize} are #{solar_system.distance_between(planet_1, planet_2)} km apart."
end

main