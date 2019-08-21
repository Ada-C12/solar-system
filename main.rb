require_relative "lib/planet"
require_relative "lib/solar_system"

def main
  our_solar_system = SolarSystem.new('Sol')
  
  add_initial_planets(our_solar_system)
  
  # asks user what action they would like to perform
  exit = false
  until exit == true
    print "\nChoose from one of the following options (list planets, planet details, add planet, find distance, exit): "
    user_decision = gets.chomp
    
    case user_decision
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

# adds initial planets to the solar system
def add_initial_planets(solar_system)
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e16, 'Only planet known to support life')
  cyborg = Planet.new('Cyborg', 'neon green', 10.993e24, 2.496e90, 'Humans have not yet discovered this planet' )
  mars = Planet.new('Mars', 'red', 9.972e24, 2.496e16, 'This planet was named after the Roman god of war')
  solar_system.add_planet(earth)
  solar_system.add_planet(cyborg)
  solar_system.add_planet(mars)
end

# finds planet summary
def planet_details(solar_system)
  print "\nWhat planet would you like to learn about? "
  planet = gets.chomp
  while solar_system.find_planet_by_name(planet) == nil
    print "Planet name is not valid. Planet name: "
    planet = gets.chomp
  end
  puts solar_system.find_planet_by_name(planet).summary
end

# adds new planet to solar system
def add_planet(solar_system)
  print "\nPlease enter the following details about your planet.\nPlanet name: "
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

# finds the distance between two planets
def distance_between_planets(solar_system)
  print "\nPlease enter the name of two planets.\nPlanet 1 name: "
  planet_1 = gets.chomp
  while solar_system.find_planet_by_name(planet_1) == nil
    print "Planet name is not valid. Planet name: "
    planet_1 = gets.chomp
  end
  print "Planet 2 name: "
  planet_2 = gets.chomp
  while solar_system.find_planet_by_name(planet_2) == nil
    print "Planet name is not valid. Planet name: "
    planet_2 = gets.chomp
  end
  print "\n#{planet_1.capitalize} and #{planet_2.capitalize} are #{solar_system.distance_between(planet_1, planet_2)} km apart.\n"
end

main