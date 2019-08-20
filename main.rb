require_relative "planet"
require_relative "solar_system"

def main
  milky_way = SolarSystem.new('Sol')
  
  # adds planets to the solar system
  add_initial_planets(milky_way)
  
  # brings the user through a control loop
  exit = false
  until exit == true
    print "\nWhat would you like to do next (list planets, exit, planet details, add planet)? "
    decision = gets.chomp
    
    case decision
    when "list planets"
      puts milky_way.list_planets
    when "exit"
      exit = true
    when "planet details"
      planet_details(milky_way)
    when "add planet"
      add_planet(milky_way)
    else
      puts "Not a valid input, please try again."
    end
  end  
end

def add_initial_planets(milky_way)
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e16, 'Only planet known to support life')
  cyborg = Planet.new('Cyborg', 'neon green', 10.993e24,-2.496e90, 'Humans have not yet discovered this planet' )
  mars = Planet.new('Mars', 'red', 9.972e24, 2.496e16, 'This planet was named after the Roman god of war')
  milky_way.add_planet(earth)
  milky_way.add_planet(cyborg)
  milky_way.add_planet(mars)
end

def planet_details(milky_way)
  print "What planet would you like to learn about? "
  planet = gets.chomp
  puts milky_way.find_planet_by_name(planet)[0].summary
end

def add_planet(milky_way)
  print "Please enter the following details about your planet.\nPlanet Name: "
  name = gets.chomp
  print "Planet color: "
  color = gets.chomp
  print "Planet mass (kg): "
  mass = gets.chomp.to_i
  print "Distance from star (km): "
  distance = gets.chomp.to_i
  print "Fun fact: "
  fact = gets.chomp
  
  new_planet = Planet.new(name, color, mass, distance, fact)
  milky_way.add_planet(new_planet)
end

main