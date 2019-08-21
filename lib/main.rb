require_relative "solar_system"
require_relative "planet"

def adding_planet(solar_system)
  print "What is the planet's name: "
  planet_name = gets.chomp

  print "What is the planet's color: "
  planet_color = gets.chomp

  print "What is the planet's mass in kilogram(kg): "
  planet_mass = gets.chomp.to_f

  print "What is the planet's distance from the sun in kilometer (km): "
  planet_distance = gets.chomp.to_f

  print "What is a fun fact about this planet: "
  planet_fact = gets.chomp

  solar_system.add_planet(Planet.new(planet_name, planet_color, planet_mass, planet_distance, planet_fact))
end

def main
  solar_system = SolarSystem.new("Moonscape")

  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  mars = Planet.new("Mars", "red", 6.39e23, 227900000, "Described as the Red Planet for its reddish appearance")
  jupiter = Planet.new("Jupiter", "tan-white", 1.898e27, 778500000, "Fastest spinning planet in the Sol system")
  neptune = Planet.new("Neptune", "blue", 1.024e26, 4495000000, "Coldest planet in the solar system")
  saturn = Planet.new("Saturn", "grey", 5.638e26, 1434000000, "Best known for its fabulous ring system")

  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(neptune)
  solar_system.add_planet(saturn)

  user_input = ""

  until user_input == "exit"
    puts "\nWhat would you like to do:
    -enter 'list' to list all the planets
    -enter 'details' to display a planet's details
    -enter 'add' to add a planet
    -enter 'distance' to calculate the distance between two planets
    -enter 'exit' to exit the program"

    user_input = gets.chomp.downcase
    case user_input
    when "list"
      puts "\n#{solar_system.list_planets}"
    when "details"
      print "Please enter the name of the planet you would like to know more about: "
      users_planet = gets.chomp
      solar_system.find_planet_by_name(users_planet).each do |planet|
        puts "\n#{planet.summary}"
      end
    when "add"
      puts "#{adding_planet(solar_system)}"
    when "distance"
      print "Enter planet one's name: "
      planet_one = gets.chomp

      print "Enter planet two's name: "
      planet_two = gets.chomp

      puts "\n#{planet_one} is #{solar_system.distance_between(planet_one, planet_two)} km away from #{planet_two}"
    when "exit"
      return
    else
      puts "\nInvalid command. Please try again!"
    end
  end
  # Wave 1 and 2 Code
  # solar_system = SolarSystem.new("Solar")

  # earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  # solar_system.add_planet(earth)

  # mars = Planet.new("Mars", "red", 6.39e23, 227900000, "Described as the Red Planet for its reddish appearance")
  # solar_system.add_planet(mars)

  # # list = solar_system.list_planets
  # # puts list

  # found_planet = solar_system.find_planet_by_name("Earth")
  # # Since found_planet returns an array, you will have to access the index at 0 then .summary
  # puts found_planet[0].summary
  # # This will output the distance between Earth and Mars
  # puts solar_system.distance_between("Earth", "Mars")
end

main
