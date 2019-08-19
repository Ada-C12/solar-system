require_relative "planet"
require_relative "solar_system"

def main
  #initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
  mercury = Planet.new("Mercury", "dark gray", 3.3011e23, 5.791e7, "A year on Mercury is just 88 days long.")
  venus = Planet.new("Venus", "yellow", 4.8675e24, 1.082e8, "The surface of Venus is hidden by an opaque layer of clouds which are formed from sulphuric acid.")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Earth is the only planet known to support life.")
  mars = Planet.new("Mars", "red", 6.4171e23, 2.279e8, "Mars is home to the tallest mountain in the solar system.")
  jupiter = Planet.new("Jupiter", "white-orange-brown-red", 1.8982e27, 7.785e8, "While Jupiter is rich in hydrogen and helium, it does not have nearly enough mass to trigger a fusion reaction in its core.")

  solar_system = SolarSystem.new("Sun")
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)

  continue = "Y"
  while continue == "Y"
    puts "What would you like to do? "
    puts "1. List planets"
    puts "2. Planet details"
    puts "3. Add Planet"
    puts "4. Find distance between two planets"
    puts "5. Exit"

    action = gets.chomp.downcase

    case action
    when "1", "list planets"
      puts "\n#{solar_system.list_planets} \n"
    when "2", "planet details"
      print "Which planet would you like to find out more about? "
      choice = gets.chomp
      puts "\n#{solar_system.find_planet_by_name(choice).summary} \n"
    when "3", "add planet"
      puts "Adding planet. Please tell me more about this planet."
      print "Enter the planet name: "
      name = gets.chomp.capitalize
      print "\nEnter the planet color: "
      color = gets.chomp.downcase
      print "\nEnter planet mass in kg: "
      mass_kg = gets.chomp.to_f
      print "\nEnter planet's distance from the sun in km: "
      distance_from_sun_km = gets.chomp.to_f
      print "\nEnter a fun fact about the planet: "
      fun_fact = gets.chomp
      solar_system.add_planet(Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact))
    when "4", "find distance between two planets", "find distance"
      puts "We will find the distance between two planets."
      print "Please enter the name of the first planet: "
      planet_1 = gets.chomp
      print "\nPlease enter the name of the second planet: "
      planet_2 = gets.chomp
      puts "\nDistance: #{solar_system.distance_between(solar_system.find_planet_by_name(planet_1), solar_system.find_planet_by_name(planet_2))}\n"
    when "5", "exit"
      continue = "N"
    else
      raise ArguementError, "That is not a valid selection."
    end
  end
end

main
