require_relative "planet"
require_relative "solar_system"

def main
  # Solar System Setup
  system = SolarSystem.new("Sun")

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'Once had water! Might still?')

  planets = [earth, mars]

  planets.each do |planet|
    system.add_planet(planet)
  end

  # CLI
  menu_options = ["list planets", "planet details", "exit"]
  user_input = ""
  until user_input == "exit"
    puts "\nWhat would you like to do next?"
    puts menu_options.join("\n")
    user_input = gets.chomp.downcase
    case user_input
    when "list planets"
      puts "\n#{system.list_planets}"
    when "planet details"
      planet_details_by_name(system)
    when "exit"
      puts "\nexiting solar system"
    else
      puts "\nplease enter an option from the menu."
    end
  end

end

def planet_details_by_name(system)
  puts "\nWhat is the name of the planet you would like to learn about?"
  planets = system.planets
  valid_input = false
  until valid_input == true
    planet_name_input = gets.chomp.capitalize
    valid_input = planets.any? { |planet| planet.name == planet_name_input }
    if valid_input == true
      puts "\nDetails for #{planet_name_input}:"
      planet_to_display = system.find_planet_by_name(planet_name_input)
      puts "#{planet_to_display.summary}"
    else
      puts "\nPlanet not found - please input a different planet name:"
    end
  end
end

main
