require_relative "planet"
require_relative "solar_system"

def main
  puts "Welcome to the Solar System Program"
  print "What is the name of the star in your solar system? "
  input_star_name = gets.chomp.downcase
  solar_system = SolarSystem.new(input_star_name)
  
  def create_new_planet
    puts "Please enter some details about this planet"
    print "  Name: "
    name = gets.chomp.capitalize
    print "  Color: "
    color = gets.chomp.downcase
    print "  Mass (kg): "
    mass_kg = gets.chomp.to_f
    print "  Distance from the sun (km): "
    distance_from_sun_km = gets.chomp.to_f
    print "  Fun fact about #{name}: "
    fun_fact = gets.chomp

    new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)

    return new_planet
    
  end
  
  input_option = nil
  until input_option == "exit"
    puts "\nWhat would you like to do next?"
    puts "Enter 'add planet', 'list planets', 'planet details' or 'exit.' "
    input_option = gets.chomp.downcase
    
    if input_option == "add planet"
      solar_system.add_planet(create_new_planet)
      puts "This planet has been added to the solar system."
    elsif input_option == "list planets"
      list = solar_system.list_planets
      puts list
    elsif input_option == "planet details"
      begin
        print "Which planet do you want details about? "
        input_found_planet = gets.chomp.downcase
        found_planet = solar_system.find_planet_by_name(input_found_planet)
      rescue ArgumentError => exception
        puts exception.message
        retry
      end

      puts found_planet.summary
    elsif input_option != "exit"
      puts "That input_option does not exist."
    end
  end

end

main


