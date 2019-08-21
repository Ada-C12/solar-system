require_relative 'solar-system'
require_relative 'planet'


def main
  solar_system = SolarSystem.new('Sol')

  mercury = Planet.new('Mercury', 'red-orange', 2.842e36, 1.016e7, 'HOTTEST PLANET')

  venus = Planet.new('Venus', 'blue', 3.562e36, 1.456e7, 'planet of loOooOOOoveE!')

  earth = Planet.new('Earth', 'blue-green', 5.972e36, 1.496e8, 'Only planet known to support life')

  mars = Planet.new('Mars', 'red', 6.172e36, 2.248e7, 'martianz')

  jupiter = Planet.new('Jupiter', 'brown', 7.832e24, 2.506e8, 'the big boi')
  
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)

  user_input = ""
  
  while user_input != 'exit' && user_input != '4'
    puts "What would you like to do?"
    puts "\n1. List planets\n2. Planet details\n3. Add planet\n4. Exit"
  
    user_input = gets.chomp.downcase.to_s

    case user_input
    when "list planets", "1"
      puts "\n" + solar_system.list_planets
    when "planet details", "2"
      planet_details(solar_system)
    when "add planet", "3"
      add_planet(solar_system)
    when "exit", "4"
      exit
    else
      puts "#{user_input} is not an option!"
    end

    puts "\n"

  end
end


def planet_details(solar_system)
  puts "Which planet do you want to learn about?"
  choose_planet = gets.chomp.capitalize.to_s
  planets = solar_system.planets
  planet = solar_system.find_planet_by_name(choose_planet)
  puts planet.summary
end


def add_planet(solar_system)
  puts "Great! Please give some information about your planet:"
  print "What is the name of the planet?: "
  input_name = gets.chomp.capitalize
  print "What color is it?: "
  input_color = gets.chomp.downcase
  print "What is its mass in kg?: "
  input_mass = gets.chomp.to_f
  print "How far is the planet from the sun in km?: "
  input_distance = gets.chomp.to_f
  print "Enter a fun fact about the planet!: "
  input_fact = gets.chomp.to_s

  new_planet = Planet.new(input_name, input_color, input_mass, input_distance, input_fact)

  return solar_system.add_planet(new_planet)

end

main